``` bash
clang test/hello.S -c -o ./output/hello.o -target riscv32-unknown-linux-elf -march=rv32im -mabi=ilp32
ld.lld ./output/hello.o -L$CDE_LIBRARY_PATH/riscv32 -lsysy -o ./output/hello
qemu-riscv32-static ./output/hello
```
