
/* Allocating storage for function 'fib' */
/* variable 'n' allocated vreg 10 */
/* variable 'a' allocated vreg 11 */
/* variable 'b' allocated vreg 12 */
/* variable 'c' allocated vreg 13 */
/* variable 'i' allocated vreg 14 */
/* Function 'fib' uses 0 bytes of memory and 15 virtual registers */
/* allocate machine register %rbx to variable 'b' (vr12), rank is 62 */
/* allocate machine register %r12 to variable 'i' (vr14), rank is 42 */
/* allocate machine register %r13 to variable 'a' (vr11), rank is 41 */
/* allocate machine register %r14 to variable 'c' (vr13), rank is 40 */
/* allocate machine register %r15 to variable 'n' (vr10), rank is 3 */
/* Function 'fib' uses 32 total bytes of memory storage for vregs */
/* Function 'fib': placing vreg storage at offset -32 from %rbp */
/* Function 'fib': 32 bytes of local storage allocated in stack frame */

/* Allocating storage for function 'main' */
/* variable 'n' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'n' (vr10), rank is 4 */
/* Function 'main' uses 0 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset 0 from %rbp */
/* Function 'main': 0 bytes of local storage allocated in stack frame */

	.section .text

	.globl fib
fib:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %r15
	pushq    %r13
	pushq    %rbx
	pushq    %r14
	pushq    %r12
	subq     $8, %rsp
	movl     %edi, %r15d         /* mov_l    vr10, vr1 */
	movl     %edi, %r10d         /* cmplte_l vr16<%r9d>, vr1, $1 */
	cmpl     $1, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_f   vr16<%r9d>, .L0 */
	je       .L0
	movl     %r15d, %eax         /* mov_l    vr0, vr10 */
	jmp      .Lfib_return        /* jmp      .Lfib_return */
.L0:
	movl     $0, %r13d           /* mov_l    vr11, $0 */
	movl     $1, %ebx            /* mov_l    vr12, $1 */
	movl     $2, %r12d           /* mov_l    vr14, $2 */
	jmp      .L2                 /* jmp      .L2 */
.L1:
	movl     %r13d, %r10d        /* add_l    vr15<%r9d>, vr11, vr12 */
	addl     %ebx, %r10d
	movl     %r10d, %r9d
	movl     %ebx, %r13d         /* mov_l    vr11, vr12 */
	movl     %r9d, %ebx          /* mov_l    vr12, vr15<%r9d> */
	movl     %r12d, %r10d        /* add_l    vr17<%r8d>, vr14, $1 */
	addl     $1, %r10d
	movl     %r10d, %r8d
	movl     %r8d, %r12d         /* mov_l    vr14, vr17<%r8d> */
.L2:
	movl     %r12d, %r10d        /* cmplte_l vr18<%r9d>, vr14, vr10 */
	cmpl     %r15d, %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, %r9d
	cmpl     $0, %r9d            /* cjmp_t   vr18<%r9d>, .L1 */
	jne      .L1
	movl     %ebx, %eax          /* mov_l    vr0, vr12 */
.Lfib_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %r12
	popq     %r14
	popq     %rbx
	popq     %r13
	popq     %r15
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	pushq    %rbx
	subq     $8, %rsp
	call     read_i32            /* call     read_i32 */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     fib                 /* call     fib */
	movl     %eax, %edi          /* mov_l    vr1, vr0 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $0, %eax            /* mov_l    vr0, $0 */
.Lmain_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	popq     %rbp
	ret                          /* ret       */
