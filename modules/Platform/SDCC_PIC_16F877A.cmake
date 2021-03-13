# Check if the shit exists
message("!!! The value of root is ${SDCC_ROOT}")
if (NOT DEFINED SDCC_ROOT)
  message(FATAL_ERROR
    "SDCC_ROOT is not defined. Please set this variable e.g.\n"
    "cmake -DSDCC_ROOT=\"C:/Program Files/sdcc\"")
endif()

# Finding the compilers
find_program(CMAKE_C_COMPILER
  sdcc
  PATHS ${SDCC_ROOT}
  PATH_SUFFIXES "bin"
  DOC "path to the SDCC C compiler.")
