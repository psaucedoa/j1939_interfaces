cmake_minimum_required(VERSION 3.0.2)
project(j1939_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
)

add_message_files(
  DIRECTORY msg 
  FILES 
  CanData.msg 
  Current.msg
  EngineRPM.msg
  EngineTemperatures.msg
  EngineThrottle.msg
  FluidLevel.msg
  FluidLevelHiLow.msg
  HydraulicLockout.msg
  KeyFloatValue.msg
  OilLife.msg
  Overheat.msg
  ParkingBrake.msg
  Voltage.msg
)

  add_service_files(
    DIRECTORY srv 
    FILES IntTrigger.srv
  )

catkin_package(
  CATKIN_DEPENDS 
  message_runtime 
  std_msgs
)
