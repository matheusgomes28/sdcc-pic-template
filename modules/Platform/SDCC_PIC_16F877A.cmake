# Check if the shit exists

message("!!! The value of root is ${SDCC_ROOT}")
if (NOT DEFINED SDCC_ROOT)
  message(FATAL_ERROR
    "SDCC_ROOT is not defined. Please set this variable e.g.\n"
    "cmake -DSDCC_ROOT=\"C:/Program Files/sdcc\"")
endif()

# Finding the compilers
find_program(SDCC_COMPILER
  sdcc
  PATHS ${SDCC_ROOT}
  PATH_SUFFIXES "bin"
  DOC "path to the SDCC C compiler.")

if (SDCC_COMPILER)
  set(CMAKE_C_COMPILER "${SDCC_COMPILER}" CACHE STRING "compiler" FORCE)
endif()

# PIC16F77A specific
set(CMAKE_C_OUTPUT_EXTENSION ".o")
set(CMAKE_ASM_OUTPUT_EXTENSION ".o")


set(CMAKE_C_FLAGS  "-mpic14")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -p16f877a")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --use-non-free")

message("!!!! The program found is ${SDCC_COMPILER}")
