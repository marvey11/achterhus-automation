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
| Dining Area | `dining` | Dining Area, part of the "Great Room" |
| Power Grid | `grid` | The main power connection to the house |
| Guest Room | `guest` | Guest Bedroom and Fitness area |
| HomeOffice | `home_office` | Home Office and Development Lab |
| Kitchen Area | `kitchen` | Kitchen Area, part of the "Great Room" |
| Living Area | `living_area` | Living Area, part of the "Great Room" |
| Pantry | `pantry` | Storage for canned and other goods, vegetables, washer |
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
| Carbon Monoxide | `co` | Carbon Monoxide (CO) |
| Humidity | `humidity` | Humidity |
| Level | `level` | Capacity/fluid level |
| Air Pressure | `pressure` | Air Pressure |
| Security | `security` | Home Security |
| Temperature | `temperature` | Air temperature (inside or out) |
| Wildlife | `wildlife` | Wildlife cameras |

## Initial Sensor Draft

1. **Living Area**
    - [x] Temperature: `sensor.living_area_air_temperature`
    - [x] Humidity: `sensor.living_area_air_humidity`
    - [x] Air Pressure: `sensor.living_area_air_pressure`
    - [ ] Carbon Monoxide (fireplace): `sensor.living_area_air_co`
2. **Master Bedroom**
    - [ ] Temperature: `sensor.sleeping_air_temperature`
    - [ ] Humidity: `sensor.sleeping_air_humidity`
    - [ ] Air Pressure: `sensor.sleeping_air_pressure`
    - [ ] Carbon Monoxide (safety): `sensor.sleeping_air_co`
3. **Guest Room**
    - [ ] Temperature: `sensor.guest_air_temperature`
    - [ ] Humidity: `sensor.guest_air_humidity`
    - [ ] Air Pressure: `sensor.guest_air_pressure`
    - [ ] Carbon Monoxide (safety): `sensor.guest_air_co`
4. **Office**
    - [x] Temperature: `sensor.home_office_air_temperature`
    - [x] Humidity: `sensor.home_office_air_humidity`
    - [x] Air Pressure: `sensor.home_office_air_pressure`
5. **Pantry**
    - [x] Temperature: `sensor.pantry_air_temperature`
    - [x] Humidity: `sensor.pantry_air_humidity`
    - [x] Air Pressure: `sensor.pantry_air_pressure`
6. **Veranda**
    - [ ] Outside Temperature: `sensor.veranda_outdoor_temperature`
    - [ ] Humidity: `sensor.veranda_air_humidity`
    - [ ] Air Pressure: `sensor.veranda_air_pressure`
    - [ ] Security Camera: `camera.veranda_area_security`
7. **Basement**
    - [ ] Humidity: `sensor.basement_air_humidity`
    - [ ] Oil tank level: `sensor.basement_oil_level`
8. **Attic**
    - [ ] Wildlife: `camera.attic_area_security`
9. **Barn**
    - [ ] Wildlife: `camera.barn_area_security`
10. **Power Grid**
    - [ ] Current Power, Real-time wattage (W): `sensor.grid_power_current`
    - [ ] Total Energy In, Cumulative consumption (kWh): `sensor.grid_energy_total_in`
    - [ ] Total Energy Out, Cumulative feed-in (kWh): `sensor.grid_energy_total_out`
