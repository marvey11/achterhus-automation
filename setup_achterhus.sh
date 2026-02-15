PROJECT_ROOT=$(pwd)

echo "Setting up Achterhus environment in ${PROJECT_ROOT}..."

# 1. Create directories relative to project root
mkdir -p "${PROJECT_ROOT}/ha-config" \
         "${PROJECT_ROOT}/esphome-config" \
         "${PROJECT_ROOT}/mosquitto/config" \
         "${PROJECT_ROOT}/mosquitto/data" \
         "${PROJECT_ROOT}/mosquitto/log"

# 2. Create the Mosquitto config
# Note: The paths INSIDE the EOF block are for the Mosquitto service, 
# which sees its own virtual root.
cat <<EOF > "${PROJECT_ROOT}/mosquitto/config/mosquitto.conf"
persistence true
persistence_location /mosquitto/data/
log_dest file /mosquitto/log/mosquitto.log

listener 1883
allow_anonymous true

listener 9001
protocol websockets
EOF

# 3. Fix permissions for the Mosquitto user (UID 1883 in the image)
# This prevents the common "Permission Denied" loop in Mosquitto
sudo chown -R 1883:1883 "${PROJECT_ROOT}/mosquitto/"

echo "✅ Environment ready in ${PROJECT_ROOT}"

