:: nasm -f bin test2.asm -o test2.obj
cd src
nasm -fwin32 test.asm -o ./dist/test.obj
@REM nasm -f win64 -o test.obj test.asm
link test.obj /subsystem:console /entry:start /out:./dist/test.exe
@REM ld test.obj -o test
cmd ./dist/test.exe