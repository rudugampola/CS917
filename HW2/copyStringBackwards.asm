title Copying a String Backwards using Irvine Library

; Author: Ravindu Udugampola			  ID: 880759941
; Description: Taking a string from source variable and 
;	copying it to target variable in reverse
; Date: 02/27/2018

include irvine32.inc								;Include Irvine library

.data
	source BYTE "This is the source string",0		; Given variables by question 
	target BYTE SIZEOF source DUP(0)				; Given variables by question 

.code													
main proc											; This will copy the Source string to the 						
													; target string in reverse!
	mov esi, offset source
	mov ecx, sizeof source

	L1:
		mov al, byte ptr [esi]
		mov [target+ecx-2],al
		inc esi
	loop L1
									
	mov edx, offset target							; Show the memory location
	mov ecx, sizeof target
	dec ecx
	call dumpmem

	exit

main endp
end main
