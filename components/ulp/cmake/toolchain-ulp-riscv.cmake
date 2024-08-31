# CMake toolchain file for ULP-RISC-V
set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER "riscv32-esp-elf-gcc")
set(CMAKE_CXX_COMPILER "riscv32-esp-elf-g++")
set(CMAKE_ASM_COMPILER "riscv32-esp-elf-gcc")

set(CMAKE_C_FLAGS "-O3 -march=rv32imc_zicsr_zifencei -mdiv -fdata-sections -ffunction-sections -Werror=parentheses -Wall -Wno-parentheses -Werror"
    CACHE STRING "C Compiler Base Flags")
set(CMAKE_CXX_FLAGS "-O3 -march=rv32imc_zicsr_zifencei -mdiv -fdata-sections -ffunction-sections -Wall -Wno-parentheses -Werror"
    CACHE STRING "C++ Compiler Base Flags")
set(CMAKE_ASM_FLAGS "-march=rv32imc -x assembler-with-cpp"
    CACHE STRING "Assembler Base Flags")
set(CMAKE_EXE_LINKER_FLAGS "-march=rv32imc_zicsr_zifencei --specs=nano.specs --specs=nosys.specs"
    CACHE STRING "Linker Base Flags")
