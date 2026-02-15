# Achterhus Home Automation System

## 🏠 Property Overview

- **Structure:**
  - 1930s Farmhouse
  - combined living space and barn under a single gabled roof
  - rectangular footprint of approximately 8 metres x 25 metres
  - 126 m² living area on the ground floor only and street-facing
  - the rest is attic space and/or barn
  - lean-to porch/veranda with lounge area
  - additional outbuildings -- unused as of now
- **Materials:** 30 cm Brick (Exterior), 11.5 cm Kalksandstein (Interior).
- **Core Server:** Lenovo ThinkCentre M910q Tiny (i5-6500, 8GB RAM, 128GB SSD).
- **Network:** WiFi-first (Living Area), Planned Ethernet backbone (Barn).

## 🏷️ Naming Convention (Entity Schema)

Standard: `<domain>.<area>_<object>_<function>`

| Domain | Key | Notes |
| :--- | :--- | :--- |
| Camera | `camera` | Security or Wildlife cameras |
| Sensor | `sensor` | For Measurements like temp, humidity, air pressure |

| Area | Key | Notes |
| :--- | :--- | :--- |
| Attic | `attic` | Possible Future 2nd floor living space expansion, currently on occasion occupied by raccoons or other animals |
| Barn | `barn` | Future expansion with woodworking shop |
| Basement | `basement` | Oil Heating & Tanks |
| Power Grid | `grid` | The main power connection to the house |
| Guest Room | `guest` | Guest Bedroom and Fitness area |
| Living Room | `living` | Large single-room Living/Dining/Kitchen area |
| Office | `office` | Home Office and Development Lab |
| Pantry | `pantry` | Storage for canned and other goods, vegetables |
| Master Bedroom | `sleeping` | Master Bedroom |
| Veranda | `veranda` | Open Lean-to porch and lounge area |

| Object | Key | Notes |
| :--- | :--- | :--- |
| Air | `air` | Air inside living spaces |
| Area | `area` | Observation area |
| Energy | `energy` | Accumulated electrical metrics |
| Heating Oil | `oil` | Heating Oil |
| Outdoor | `outdoor` | Outside air |
| Power | `power` | Active electrical metrics |

| Function | Key | Notes |
| :--- | :--- | :--- |
| Carbon Monoxide (CO) | `co` | Carbon Monoxide |
| Humidity | `humidity` | Humidity |
| Level | `level` | Capacity/fluid level |
| Security | `security` | Home Security |
| Temperature | `temperature` | Air temperature (inside or out) |
| Wildlife | `wildlife` | Wildlife cameras |

## Initial Sensor Draft

1. **Living Room**
    - Temperature: `sensor.living_air_temperature`
    - Humidity (fireplace): `sensor.living_air_humidity`
    - Carbon Monoxide (fireplace): `sensor.living_air_co`
2. **Master Bedroom**
    - Temperature: `sensor.sleeping_air_temperature`
    - Humidity: `sensor.sleeping_air_humidity`
    - Carbon Monoxide (safety): `sensor.sleeping_air_co`
3. **Guest Room**
    - Temperature: `sensor.guest_air_temperature`
    - Humidity: `sensor.guest_air_humidity`
    - Carbon Monoxide (safety): `sensor.guest_air_co`
4. **Office**
    - Temperature: `sensor.office_air_temperature`
    - Humidity: `sensor.office_air_humidity`
5. **Pantry**
    - Temperature: `sensor.pantry_air_temperature`
6. **Veranda**
    - Outside Temperature: `sensor.veranda_outdoor_temperature`
    - Humidity: `sensor.veranda_air_humidity`
    - Security Camera: `camera.veranda_area_security`
7. **Basement**
    - Humidity: `sensor.basement_air_humidity`
    - Oil tank level: `sensor.basement_oil_level`
8. **Attic**
    - Wildlife: `camera.attic_area_security`
9. **Barn**
    - Wildlife: `camera.barn_area_security`
10. **Power Grid**
    - Current Power, Real-time wattage (W): `sensor.grid_power_current`
    - Total Energy In, Cumulative consumption (kWh): `sensor.grid_energy_total_in`
    - Total Energy Out, Cumulative feed-in (kWh): `sensor.grid_energy_total_out`
