set(CMAKE_SYSTEM_NAME SDCC_PIC_16F877A)

# Finding resource settings
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Set default MCU family and model
if (NOT MICROCHIP_FAMILY)
  set(MICROCHIP_FAMILY "pic16")
endif()

if (MICROCHIP_MODEL STREQUAL "pic16")
  set(MICROCHIP_MODEL "16f877a")
endif()


# Need a better way to detect the supported models here
if (NOT MICROCHIP_FAMILY STREQUAL "pic16" AND NOT MICROCHIP_MODEL STREQUAL "16f877a")
  message(FATAL_ERROR "Settings not supported. Please drop a request.")
endif()
