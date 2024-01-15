# nasm -f bin test2.asm -o test2.obj
sh ./build/game.build.sh
cd ./src
nasm -f elf64  main.asm -o ./../dist/main.o
# nasm -f elf64  test.asm -o ./../dist/test.o
cd ../dist
ld ./main.o -o main
./main