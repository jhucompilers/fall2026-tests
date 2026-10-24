
/* Allocating storage for function 'main' */
/* variable 'points' allocated 24 bytes of storage at offset 0 */
/* variable 'i' allocated vreg 10 */
/* variable 'count' allocated vreg 11 */
/* Function 'main' uses 24 bytes of memory and 12 virtual registers */
/* Function 'main': placing memory variables at offset -24 from %rbp */
/* Function 'main' uses 336 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -360 from %rbp */
/* Function 'main': 368 bytes of local storage allocated in stack frame */

	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $24 */
	movq     %rsp, %rbp
	subq     $368, %rsp
	movl     $11, -344(%rbp)     /* mov_l    vr12, $11 */
	movl     -344(%rbp), %r10d   /* mov_l    vr11, vr12 */
	movl     %r10d, -352(%rbp)
	movl     $0, -336(%rbp)      /* mov_l    vr13, $0 */
	movl     -336(%rbp), %r10d   /* mov_l    vr10, vr13 */
	movl     %r10d, -360(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	leaq     -24(%rbp), %r10     /* localaddr vr14, $0 */
	movq     %r10, -328(%rbp)
	movl     -360(%rbp), %r10d   /* sconv_lq vr15, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -320(%rbp)
	movq     -320(%rbp), %r10    /* mul_q    vr16, vr15, $8 */
	imulq    $8, %r10
	movq     %r10, -312(%rbp)
	movq     -328(%rbp), %r10    /* add_q    vr17, vr14, vr16 */
	addq     -312(%rbp), %r10
	movq     %r10, -304(%rbp)
	movq     $0, -296(%rbp)      /* mov_q    vr18, $0 */
	movq     -304(%rbp), %r10    /* add_q    vr19, vr17, vr18 */
	addq     -296(%rbp), %r10
	movq     %r10, -288(%rbp)
	movq     -288(%rbp), %r11    /* mov_l    (vr19), vr11 */
	movl     -352(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -280(%rbp)      /* mov_l    vr20, $1 */
	movl     -352(%rbp), %r10d   /* add_l    vr21, vr11, vr20 */
	addl     -280(%rbp), %r10d
	movl     %r10d, -272(%rbp)
	movl     -272(%rbp), %r10d   /* mov_l    vr11, vr21 */
	movl     %r10d, -352(%rbp)
	leaq     -24(%rbp), %r10     /* localaddr vr22, $0 */
	movq     %r10, -264(%rbp)
	movl     -360(%rbp), %r10d   /* sconv_lq vr23, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -256(%rbp)
	movq     -256(%rbp), %r10    /* mul_q    vr24, vr23, $8 */
	imulq    $8, %r10
	movq     %r10, -248(%rbp)
	movq     -264(%rbp), %r10    /* add_q    vr25, vr22, vr24 */
	addq     -248(%rbp), %r10
	movq     %r10, -240(%rbp)
	movq     $4, -232(%rbp)      /* mov_q    vr26, $4 */
	movq     -240(%rbp), %r10    /* add_q    vr27, vr25, vr26 */
	addq     -232(%rbp), %r10
	movq     %r10, -224(%rbp)
	movq     -224(%rbp), %r11    /* mov_l    (vr27), vr11 */
	movl     -352(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     $1, -216(%rbp)      /* mov_l    vr28, $1 */
	movl     -352(%rbp), %r10d   /* add_l    vr29, vr11, vr28 */
	addl     -216(%rbp), %r10d
	movl     %r10d, -208(%rbp)
	movl     -208(%rbp), %r10d   /* mov_l    vr11, vr29 */
	movl     %r10d, -352(%rbp)
	movl     $1, -200(%rbp)      /* mov_l    vr30, $1 */
	movl     -360(%rbp), %r10d   /* add_l    vr31, vr10, vr30 */
	addl     -200(%rbp), %r10d
	movl     %r10d, -192(%rbp)
	movl     -192(%rbp), %r10d   /* mov_l    vr10, vr31 */
	movl     %r10d, -360(%rbp)
.L1:
	movl     $3, -184(%rbp)      /* mov_l    vr32, $3 */
	movl     -360(%rbp), %r10d   /* cmplt_l  vr33, vr10, vr32 */
	cmpl     -184(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -176(%rbp)
	cmpl     $0, -176(%rbp)      /* cjmp_t   vr33, .L0 */
	jne      .L0
	movl     $2, -168(%rbp)      /* mov_l    vr34, $2 */
	movl     -168(%rbp), %r10d   /* mov_l    vr10, vr34 */
	movl     %r10d, -360(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -24(%rbp), %r10     /* localaddr vr35, $0 */
	movq     %r10, -160(%rbp)
	movl     -360(%rbp), %r10d   /* sconv_lq vr36, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -152(%rbp)
	movq     -152(%rbp), %r10    /* mul_q    vr37, vr36, $8 */
	imulq    $8, %r10
	movq     %r10, -144(%rbp)
	movq     -160(%rbp), %r10    /* add_q    vr38, vr35, vr37 */
	addq     -144(%rbp), %r10
	movq     %r10, -136(%rbp)
	movq     $0, -128(%rbp)      /* mov_q    vr39, $0 */
	movq     -136(%rbp), %r10    /* add_q    vr40, vr38, vr39 */
	addq     -128(%rbp), %r10
	movq     %r10, -120(%rbp)
	movq     -120(%rbp), %r11    /* mov_l    vr1, (vr40) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	leaq     -24(%rbp), %r10     /* localaddr vr41, $0 */
	movq     %r10, -112(%rbp)
	movl     -360(%rbp), %r10d   /* sconv_lq vr42, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -104(%rbp)
	movq     -104(%rbp), %r10    /* mul_q    vr43, vr42, $8 */
	imulq    $8, %r10
	movq     %r10, -96(%rbp)
	movq     -112(%rbp), %r10    /* add_q    vr44, vr41, vr43 */
	addq     -96(%rbp), %r10
	movq     %r10, -88(%rbp)
	movq     $4, -80(%rbp)       /* mov_q    vr45, $4 */
	movq     -88(%rbp), %r10     /* add_q    vr46, vr44, vr45 */
	addq     -80(%rbp), %r10
	movq     %r10, -72(%rbp)
	movq     -72(%rbp), %r11     /* mov_l    vr1, (vr46) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_nl            /* call     print_nl */
	movl     $1, -64(%rbp)       /* mov_l    vr47, $1 */
	movl     -360(%rbp), %r10d   /* sub_l    vr48, vr10, vr47 */
	subl     -64(%rbp), %r10d
	movl     %r10d, -56(%rbp)
	movl     -56(%rbp), %r10d    /* mov_l    vr10, vr48 */
	movl     %r10d, -360(%rbp)
.L3:
	movl     $0, -48(%rbp)       /* mov_l    vr49, $0 */
	movl     -360(%rbp), %r10d   /* cmpgte_l vr50, vr10, vr49 */
	cmpl     -48(%rbp), %r10d
	setge    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -40(%rbp)
	cmpl     $0, -40(%rbp)       /* cjmp_t   vr50, .L2 */
	jne      .L2
	movl     $0, -32(%rbp)       /* mov_l    vr51, $0 */
	movl     -32(%rbp), %eax     /* mov_l    vr0, vr51 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $368, %rsp          /* leave    $24 */
	popq     %rbp
	ret                          /* ret       */
