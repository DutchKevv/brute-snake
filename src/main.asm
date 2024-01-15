section     .text
            ; test:  dword 0b00001111000011110000111100001111
global      _start
big_number	DQ	1234 

_start:
mov     edx,len
mov     ecx,hex
mov     ebx,1
mov     eax,4
int     0x80
mov     eax,1
int     0x80
section     .data
; msg     DB  '4cd2e701875928c1bf1b16cdaaeab2c2fa7b2a2c',0xa
hex   	DB	"22",0xa
len     equ $ - hex

