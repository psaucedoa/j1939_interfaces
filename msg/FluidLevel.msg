# Single fluid level reading. Appropriate for measuring the fluid level in a tank / reservoir. 
# Useful for fuel, coolant, hydraulic levels.

std_msgs/Header header  # timestamp of the measurement
                        # frame_id is the location/type of fluid tank/reservoir being read

float64 fluid_level     # [%] Fluid level percent of max

float64 variance        # 0 = unknown