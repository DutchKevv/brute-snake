# nasm -f bin test2.asm -o test2.obj
cd src
nasm -f elf64  game.asm -o ./../dist/game.o
nasm -f elf64  main.asm -o ./../dist/main.o
# nasm -f elf64  test.asm -o ./../dist/test.o
cd ../dist
ld ./game.o -o game
ld ./main.o -o main
objdump -d game
objdump -d game|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
./test