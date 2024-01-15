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
hex   	DB	"\xba\x0e\x00\x00\x00\xb9\x00\x20\x40\x00\xbb\x01\x00\x00\x00\xb8\x04\x00\x00\x00\xcd\x80\xb8\x01\x00\x00\x00\xcd\x80",0xa
len     equ $ - hex

