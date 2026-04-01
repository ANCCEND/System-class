global computeAverageScoreAsm

section .text
computeAverageScoreAsm:
	; 参数：rdi = student* s, esi = int num
	; student 布局：scores 偏移 20，average 偏移 36，结构体大小 38
	test esi, esi
	jle .done

	xor ecx, ecx                ; i = 0

.student_loop:
	mov rax, rcx
	imul rax, 38
	lea r8, [rdi + rax]         ; r8 = &s[i]

	xor eax, eax                ; total = 0
	xor edx, edx                ; j = 0

.score_loop:
	movsx r9d, word [r8 + 20 + rdx * 2]
	add eax, r9d
	inc edx
	cmp edx, 8
	jl .score_loop

	cdq
	mov r9d, 8
	idiv r9d                    ; eax = total / 8
	mov word [r8 + 36], ax      ; s[i].average = total / 8

	inc ecx
	cmp ecx, esi
	jl .student_loop

.done:
	ret