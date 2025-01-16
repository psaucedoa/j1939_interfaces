cmake_minimum_required(VERSION 3.8)
project(j1939_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/KeyFloatValue.msg"
  "msg/CanData.msg"
  "msg/Current.msg"
  "msg/EngineRPM.msg"
  "msg/EngineTemperatures.msg"
  "msg/EngineThrottle.msg"
  "msg/FluidLevel.msg"
  "msg/FluidLevelHiLow.msg"
  "msg/HydraulicLockout.msg"
  "msg/OilLife.msg"
  "msg/Overheat.msg"
  "msg/ParkingBrake.msg"
  "msg/Voltage.msg"
  DEPENDENCIES std_msgs builtin_interfaces
)

install(
  FILES j1939_interfaces_mapping_rule.yaml
  DESTINATION share/${PROJECT_NAME}
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()