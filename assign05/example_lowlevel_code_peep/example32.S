
/* Allocating storage for function 'swap' */
/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'tmp' allocated vreg 13 */
/* Function 'swap' uses 0 bytes of memory and 14 virtual registers */
/* allocate machine register %rbx to variable 'arr' (vr10), rank is 4 */
/* allocate machine register %r12 to variable 'i' (vr11), rank is 2 */
/* allocate machine register %r13 to variable 'j' (vr12), rank is 2 */
/* allocate machine register %r14 to variable 'tmp' (vr13), rank is 2 */
/* Function 'swap' uses 0 total bytes of memory storage for vregs */
/* Function 'swap': placing vreg storage at offset 0 from %rbp */
/* Function 'swap': allocating space for 1 register spills at offset -8 from %rbp */
/* Function 'swap': 16 bytes of local storage allocated in stack frame */
/* performed 2 round(s) of peephole optimization */

/* Allocating storage for function 'bubble' */
/* variable 'arr' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'i' allocated vreg 12 */
/* variable 'tmp' allocated vreg 13 */
/* Function 'bubble' uses 0 bytes of memory and 14 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr12), rank is 141 */
/* allocate machine register %r12 to variable 'arr' (vr10), rank is 60 */
/* allocate machine register %r13 to variable 'n' (vr11), rank is 20 */
/* Function 'bubble' uses 24 total bytes of memory storage for vregs */
/* Function 'bubble': placing vreg storage at offset -24 from %rbp */
/* Function 'bubble': 32 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */

/* Allocating storage for function 'main' */
/* variable 'a' allocated 20 bytes of storage at offset 0 */
/* variable 'i' allocated vreg 10 */
/* Function 'main' uses 20 bytes of memory and 11 virtual registers */
/* allocate machine register %rbx to variable 'i' (vr10), rank is 81 */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 8 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -32 from %rbp */
/* Function 'main': 32 bytes of local storage allocated in stack frame */
/* performed 4 round(s) of peephole optimization */

	.section .text

	.globl swap
swap:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $16, %rsp
	pushq    %rbx
	pushq    %r12
	pushq    %r13
	pushq    %r14
	movslq   %esi, %r9           /* sconv_lq vr14<%r9>, vr2 */
	movq     %r9, %r8            /* mul_q    vr15<%r8>, vr14<%r9>, $4 */
	imulq    $4, %r8
	movq     %rdi, %rcx          /* add_q    vr16<%rcx>, vr1, vr15<%r8> */
	addq     %r8, %rcx
	movl     (%rcx), %r9d        /* mov_l    vr17<%r9d>, (vr16<%ecx>) */
	movslq   %edx, %r8           /* sconv_lq vr18<%r8>, vr3 */
	movq     %r9, -8(%rbp)       /* spill_q  vr17<%r9>, $0 */
	movq     %r8, %r9            /* mul_q    vr19<%r9>, vr18<%r8>, $4 */
	imulq    $4, %r9
	movq     %rdi, %r8           /* add_q    vr20<%r8>, vr1, vr19<%r9> */
	addq     %r9, %r8
	movl     (%r8), %r9d         /* mov_l    vr24<%r9d>, (vr20<%r8d>) */
	movl     %r9d, (%rcx)        /* mov_l    (vr16<%ecx>), vr24<%r9d> */
	movq     -8(%rbp), %rcx      /* restore_q vr17<%rcx>, $0 */
	movl     %ecx, (%r8)         /* mov_l    (vr20<%r8d>), vr17<%ecx> */
.Lswap_return:
	popq     %r14                /* leave    $0 */
	popq     %r13
	popq     %r12
	popq     %rbx
	addq     $16, %rsp
	popq     %rbp
	ret                          /* ret       */

	.globl bubble
bubble:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %r12
	pushq    %r13
	pushq    %rbx
	subq     $8, %rsp
	movq     %rdi, %r12          /* mov_q    vr10, vr1 */
	movl     %esi, %r13d         /* mov_l    vr11, vr2 */
	movl     $1, %ebx            /* mov_l    vr12, $1 */
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movslq   %ebx, %r9           /* sconv_lq vr14<%r9>, vr12 */
	movq     %r9, %r8            /* mul_q    vr15<%r8>, vr14<%r9>, $4 */
	imulq    $4, %r8
	movq     %r12, %rcx          /* add_q    vr16<%rcx>, vr10, vr15<%r8> */
	addq     %r8, %rcx
	movl     %ebx, %r9d          /* sub_l    vr18<%r9d>, vr12, $1 */
	subl     $1, %r9d
	movslq   %r9d, %r8           /* sconv_lq vr19<%r8>, vr18<%r9d> */
	movq     %r8, %r9            /* mul_q    vr20<%r9>, vr19<%r8>, $4 */
	imulq    $4, %r9
	movq     %r12, %r8           /* add_q    vr21<%r8>, vr10, vr20<%r9> */
	addq     %r9, %r8
	movl     (%rcx), %r9d        /* mov_l    vr23<%r9d>, (vr16<%ecx>) */
	movl     (%r8), %ecx         /* mov_l    vr24<%ecx>, (vr21<%r8d>) */
	cmpl     %ecx, %r9d          /* cmplt_l  vr22<%r8d>, vr23<%r9d>, vr24<%ecx> */
	setl     %r10b
	movzbl   %r10b, %r11d
	cmpl     $0, %r11d           /* cjmp_f   vr22<%r8d>, .L2 */
	je       .L2
	movq     %r12, %rdi          /* mov_q    vr1, vr10 */
	movl     %ebx, %esi          /* sub_l    vr15<%r9d>, vr12, $1 */
	subl     $1, %esi
	movl     %ebx, %edx          /* mov_l    vr3, vr12 */
	call     swap                /* call     swap */
.L2:
	incl     %ebx
.L1:
	cmpl     %r13d, %ebx         /* cmplt_l  vr18<%r9d>, vr12, vr11 */
	setl     %r10b
	movzbl   %r10b, %r11d
	cmpl     $0, %r11d           /* cjmp_t   vr18<%r9d>, .L0 */
	jne      .L0
.Lbubble_return:
	addq     $8, %rsp            /* leave    $0 */
	popq     %rbx
	popq     %r13
	popq     %r12
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */

	.globl main
main:
	pushq    %rbp                /* enter    $20 */
	movq     %rsp, %rbp
	subq     $32, %rsp
	pushq    %rbx
	subq     $8, %rsp
	leaq     -24(%rbp), %r9      /* localaddr vr12<%r9>, $0 */
	movl     $52, 0(%r9)         /* add_q    vr16<%r8>, vr12<%r9>, $0 */
	movl     $31, 4(%r9)         /* add_q    vr22<%rcx>, vr12<%r9>, $4 */
	movl     $8, 8(%r9)          /* add_q    vr28<%rdx>, vr12<%r9>, $8 */
	movl     $41, 12(%r9)        /* add_q    vr34<%r8>, vr12<%r9>, $12 */
	movl     $75, 16(%r9)        /* add_q    vr40<%rcx>, vr12<%r9>, $16 */
	movq     %r9, %rdi           /* mov_q    vr1, vr12<%r9> */
	movl     $5, %esi            /* mov_l    vr2, $5 */
	call     bubble              /* call     bubble */
	xorl     %ebx, %ebx          /* mov_l    vr10, $0 */
	jmp      .L4                 /* jmp      .L4 */
.L3:
	leaq     -24(%rbp), %r9      /* localaddr vr11<%r9>, $0 */
	movslq   %ebx, %r8           /* sconv_lq vr12<%r8>, vr10 */
	movl     (%r9,%r8,4), %edi   /* mul_q    vr13<%rcx>, vr12<%r8>, $4 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	incl     %ebx
.L4:
	cmpl     $5, %ebx            /* cmplt_l  vr18<%r9d>, vr10, $5 */
	setl     %r10b
	movzbl   %r10b, %r11d
	cmpl     $0, %r11d           /* cjmp_t   vr18<%r9d>, .L3 */
	jne      .L3
	xorl     %eax, %eax          /* mov_l    vr0, $0 */
.Lmain_return:
	addq     $8, %rsp            /* leave    $20 */
	popq     %rbx
	addq     $32, %rsp
	popq     %rbp
	ret                          /* ret       */
