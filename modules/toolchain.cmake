set(CMAKE_SYSTEM_NAME SDCC_PIC)

set(CMAKE_SYSROOT ${SDCC_SYSROOT})


# Gotta write a find program for the
# sdcc compiler
set(CMAKE_C_COMPILER ${SDCC_COMPILER})


# Finding resource settings
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Set default MCU family and model
if (NOT MICROCHIP_FAMILY)
  set(MICROCHIP_FAMILY "pic16")
endif()

if (MICROCHIP_FAMILY STREQUAL "pic16")
  set(MICROCHIP_MODEL "16f877a")
endif()


if (NOT MICROCHIP_FAMILY STREQUAL "pic16" AND NOT MICROCHIP_MODEL STREQUAL "16f877a")
  message(FATAL_ERROR "Settings not supported. Please drop a request.")
endif()
