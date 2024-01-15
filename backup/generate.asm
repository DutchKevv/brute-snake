section     .text
global      _start
_start:
mov     edx,len
mov     ecx,msg
mov     ebx,1
mov     eax,4
int     0x80
mov     eax,1
int     0x80
section     .data
msg     db  '4cd2e701875928c1bf1b16cdaaeab2c2fa7b2a2c',0xa
len     equ $ - msg