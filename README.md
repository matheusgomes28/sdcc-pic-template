# SDCC PIC* template

This project contains the toolchain CMake files needed to compile programs for the Microchip's PIC* devices.

Currently, this is being tested with the PIC16G877A device.


## Running The Project

So far, the CMake passes the`try_compile(...)` stage, given that you set the `SDCC_ROOT` correct to the installation root of SDCC in your machine.

Use the following command to configure CMake:

```
cd PROJECT_ROOT
mkdir build && cd build
cmake -DCMAKE_MODULE_PATH:FILEPATH="PROJECT_ROOT/modules" \
      -DCMAKE_TOOLCHAIN_FILE:FILEPATH="PROJECT_ROOT/modules/toolchain.cmake" \
      -DSDCC_ROOT:FILEPATH="SDCC_INSTALLATION_ROOT" ..
```

With the following value meanings:
  - `PROJECT_ROOT`: The path to this repository once cloned.
  - `SDCC_INSTALLATION_ROOT`: Where you have installed SDCC in your machine. I.e. where the "bin" and "lib" directories of your SDCC reside, for example `C:/Program Files (x86)/sdcc`.


Hello World.
