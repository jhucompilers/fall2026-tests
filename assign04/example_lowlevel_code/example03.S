
/* Allocating storage for function 'main' */
/* variable 'i' allocated vreg 10 */
/* variable 'n' allocated vreg 11 */
/* variable 'sum' allocated vreg 12 */
/* Function 'main' uses 0 bytes of memory and 13 virtual registers */
/* Function 'main' uses 80 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -80 from %rbp */
/* Function 'main': 80 bytes of local storage allocated in stack frame */

	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $80, %rsp
	movl     $1, -56(%rbp)       /* mov_l    vr13, $1 */
	movl     -56(%rbp), %r10d    /* mov_l    vr10, vr13 */
	movl     %r10d, -80(%rbp)
	movl     $11, -48(%rbp)      /* mov_l    vr14, $11 */
	movl     -48(%rbp), %r10d    /* mov_l    vr11, vr14 */
	movl     %r10d, -72(%rbp)
	movl     $0, -40(%rbp)       /* mov_l    vr15, $0 */
	movl     -40(%rbp), %r10d    /* mov_l    vr12, vr15 */
	movl     %r10d, -64(%rbp)
.L0:
	movl     -64(%rbp), %r10d    /* add_l    vr16, vr12, vr10 */
	addl     -80(%rbp), %r10d
	movl     %r10d, -32(%rbp)
	movl     -32(%rbp), %r10d    /* mov_l    vr12, vr16 */
	movl     %r10d, -64(%rbp)
	movl     $1, -24(%rbp)       /* mov_l    vr17, $1 */
	movl     -80(%rbp), %r10d    /* add_l    vr18, vr10, vr17 */
	addl     -24(%rbp), %r10d
	movl     %r10d, -16(%rbp)
	movl     -16(%rbp), %r10d    /* mov_l    vr10, vr18 */
	movl     %r10d, -80(%rbp)
	movl     -80(%rbp), %r10d    /* cmplt_l  vr19, vr10, vr11 */
	cmpl     -72(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr19, .L0 */
	jne      .L0
	movl     -64(%rbp), %eax     /* mov_l    vr0, vr12 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $80, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */
