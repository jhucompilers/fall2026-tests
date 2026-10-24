
/* Allocating storage for function 'main' */
/* variable 'n' allocated vreg 10 */
/* Function 'main' uses 0 bytes of memory and 11 virtual registers */
/* Function 'main' uses 56 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -56 from %rbp */
/* Function 'main': 64 bytes of local storage allocated in stack frame */

	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $64, %rsp
	movl     $10, -48(%rbp)      /* mov_l    vr11, $10 */
	movl     -48(%rbp), %r10d    /* mov_l    vr10, vr11 */
	movl     %r10d, -56(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     -56(%rbp), %edi     /* mov_l    vr1, vr10 */
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -40(%rbp)       /* mov_l    vr12, $1 */
	movl     -56(%rbp), %r10d    /* sub_l    vr13, vr10, vr12 */
	subl     -40(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -56(%rbp)
.L1:
	movl     $0, -24(%rbp)       /* mov_l    vr14, $0 */
	movl     -56(%rbp), %r10d    /* cmpgt_l  vr15, vr10, vr14 */
	cmpl     -24(%rbp), %r10d
	setg     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -16(%rbp)
	cmpl     $0, -16(%rbp)       /* cjmp_t   vr15, .L0 */
	jne      .L0
	movl     $0, -8(%rbp)        /* mov_l    vr16, $0 */
	movl     -8(%rbp), %eax      /* mov_l    vr0, vr16 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $64, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
