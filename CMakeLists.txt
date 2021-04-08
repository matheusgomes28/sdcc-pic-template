cmake_minimum_required(VERSION 3.10)
project(SDCC_TEMPLATE C)

message("!!! The C compiler is ${CMAKE_C_COMPILER}")
message("!!! The C compiler flags are ${CMAKE_C_FLAGS}")
message("!!! The sysroot is ${CMAKE_SYSROOT}")

message("!!! ${SDCC_INCLUDES} ${SDCC_NON_FREE_INCLUDES}")
include_directories(${SDCC_INCLUDES} ${SDCC_NON_FREE_INCLUDES})

add_executable(test main.c)
