# Single fluid level reading. Appropriate for measuring the fluid level in a tank / reservoir. 
# Useful for fuel, coolant, hydraulic levels.

Header header  # timestamp of the measurement
                        # frame_id is the location/type of fluid tank/reservoir being read

uint8 fluid_level_hi_low     # [0,1] Fluid level LOW or HI