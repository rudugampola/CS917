; Copying Strings Backward            (copyStringBackwards.asm)
; Description: Using a loop to copy a string backwards
; Date: 03/05/2018

INCLUDE Irvine32.inc

.data
source  byte  "This is the source string", 0
target  byte  sizeof source dup('#')

.code
main PROC
    mov edi, sizeof source - 2D
    mov ecx, sizeof source

reverse_string:
    mov al, source[esi]
    mov target[edi], al
    inc esi
    dec edi
    loop reverse_string

	mov esi, offset target
	mov ebx, 1
	mov ecx, sizeof target
	call DumpMem

main endp
end main
