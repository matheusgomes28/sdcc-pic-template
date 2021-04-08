# Check if the shit exists

if (NOT DEFINED SDCC_ROOT)
  message(FATAL_ERROR
    "SDCC_ROOT is not defined. Please set this variable e.g.\n"
    "cmake -DSDCC_ROOT=\"C:/Program Files/sdcc\"")
endif()

set(CMAKE_SYSROOT "${SDCC_ROOT}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Finding the compilers
find_program(SDCC_COMPILER
  sdcc
  PATHS ${SDCC_ROOT}
  PATH_SUFFIXES "bin"
  DOC "path to the SDCC C compiler.")

if (SDCC_COMPILER)
  set(CMAKE_C_COMPILER "${SDCC_COMPILER}" CACHE STRING "C compiler" FORCE)
endif()

# PIC16F77A specific
set(CMAKE_C_OUTPUT_EXTENSION ".o")
set(CMAKE_ASM_OUTPUT_EXTENSION ".o")

set(CMAKE_C_FLAGS  "-mpic14")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -p16f877a")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --use-non-free")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --disable-warning 1")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --Werror")

if (SDCC_ROOT)
  set(SDCC_NON_FREE_INCLUDES "${SDCC_ROOT}/non-free/include")
  set(SDCC_INCLUDES "${SDCC_ROOT}/include")
else()
  message(FATAL_ERROR "SDCC compiler was not found in the root given.")
endif()