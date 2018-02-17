; AddTwo.asm - adds two 32-bit integers.
; Write a program that subtracts three integers only 
; 16-bit registers.  Insert a cal DumpRegs statement 
; to display the register values

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO,dwExitCode:dword
DumpRegs PROTO

.code
main PROC
	mov	eax, 50000h	;EAX = 50000h				
	add	eax, 30000h	;EBX = 30000h
	mov ecx, 43h	;ECX = 43h

	sub eax, 10000h	; EAX = 40000h
	sub ebx, 9000h	; EBX = 21000h
	sub ecx, 1h		; ECX = 42h

	call DumpRegs

	INVOKE ExitProcess,0
main ENDP 
END main
