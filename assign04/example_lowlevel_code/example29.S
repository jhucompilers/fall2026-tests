
/* Allocating storage for function 'read_m500x500' */
/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m500x500' uses 0 bytes of memory and 12 virtual registers */
/* Function 'read_m500x500' uses 88 total bytes of memory storage for vregs */
/* Function 'read_m500x500': placing vreg storage at offset -88 from %rbp */
/* Function 'read_m500x500': 96 bytes of local storage allocated in stack frame */

/* Allocating storage for function 'main' */
/* variable 'a' allocated 2000000 bytes of storage at offset 0 */
/* variable 'b' allocated 2000000 bytes of storage at offset 2000000 */
/* variable 'c' allocated 2000000 bytes of storage at offset 4000000 */
/* variable 'M' allocated vreg 10 */
/* variable 'NELTS' allocated vreg 11 */
/* variable 'SZ' allocated vreg 12 */
/* variable 'i' allocated vreg 13 */
/* variable 'j' allocated vreg 14 */
/* variable 'k' allocated vreg 15 */
/* variable 'r' allocated vreg 16 */
/* variable 'val' allocated vreg 17 */
/* Function 'main' uses 6000000 bytes of memory and 18 virtual registers */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 568 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000568 from %rbp */
/* Function 'main': 6000576 bytes of local storage allocated in stack frame */

	.section .text

	.globl read_m500x500
read_m500x500:
	pushq    %rbp                /* enter    $0 */
	movq     %rsp, %rbp
	subq     $96, %rsp
	movq     %rdi, -88(%rbp)     /* mov_q    vr10, vr1 */
	movl     $0, -72(%rbp)       /* mov_l    vr12, $0 */
	movl     -72(%rbp), %r10d    /* mov_l    vr11, vr12 */
	movl     %r10d, -80(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	call     read_i64            /* call     read_i64 */
	movq     %rax, -64(%rbp)     /* mov_q    vr13, vr0 */
	movl     -80(%rbp), %r10d    /* sconv_lq vr14, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -56(%rbp)
	movq     -56(%rbp), %r10     /* mul_q    vr15, vr14, $8 */
	imulq    $8, %r10
	movq     %r10, -48(%rbp)
	movq     -88(%rbp), %r10     /* add_q    vr16, vr10, vr15 */
	addq     -48(%rbp), %r10
	movq     %r10, -40(%rbp)
	movq     -40(%rbp), %r11     /* mov_q    (vr16), vr13 */
	movq     -64(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -32(%rbp)       /* mov_l    vr17, $1 */
	movl     -80(%rbp), %r10d    /* add_l    vr18, vr11, vr17 */
	addl     -32(%rbp), %r10d
	movl     %r10d, -24(%rbp)
	movl     -24(%rbp), %r10d    /* mov_l    vr11, vr18 */
	movl     %r10d, -80(%rbp)
.L1:
	movl     $250000, -16(%rbp)  /* mov_l    vr19, $250000 */
	movl     -80(%rbp), %r10d    /* cmplt_l  vr20, vr11, vr19 */
	cmpl     -16(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr20, .L0 */
	jne      .L0
	jmp      .Lread_m500x500_return /* jmp      .Lread_m500x500_return */
.Lread_m500x500_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */

	.globl main
main:
	pushq    %rbp                /* enter    $6000000 */
	movq     %rsp, %rbp
	subq     $6000576, %rsp
	movl     $500, -6000512(%rbp) /* mov_l    vr18, $500 */
	movl     -6000512(%rbp), %r10d /* mov_l    vr10, vr18 */
	movl     %r10d, -6000568(%rbp)
	movl     $250000, -6000504(%rbp) /* mov_l    vr19, $250000 */
	movl     -6000504(%rbp), %r10d /* mov_l    vr11, vr19 */
	movl     %r10d, -6000560(%rbp)
	leaq     -6000000(%rbp), %r10 /* localaddr vr20, $0 */
	movq     %r10, -6000496(%rbp)
	movq     -6000496(%rbp), %rdi /* mov_q    vr1, vr20 */
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r10 /* localaddr vr21, $2000000 */
	movq     %r10, -6000488(%rbp)
	movq     -6000488(%rbp), %rdi /* mov_q    vr1, vr21 */
	call     read_m500x500       /* call     read_m500x500 */
	movl     $0, -6000480(%rbp)  /* mov_l    vr22, $0 */
	movl     -6000480(%rbp), %r10d /* mov_l    vr13, vr22 */
	movl     %r10d, -6000552(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movq     $0, -6000472(%rbp)  /* mov_q    vr23, $0 */
	leaq     -2000000(%rbp), %r10 /* localaddr vr24, $4000000 */
	movq     %r10, -6000464(%rbp)
	movl     -6000552(%rbp), %r10d /* sconv_lq vr25, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000456(%rbp)
	movq     -6000456(%rbp), %r10 /* mul_q    vr26, vr25, $8 */
	imulq    $8, %r10
	movq     %r10, -6000448(%rbp)
	movq     -6000464(%rbp), %r10 /* add_q    vr27, vr24, vr26 */
	addq     -6000448(%rbp), %r10
	movq     %r10, -6000440(%rbp)
	movq     -6000440(%rbp), %r11 /* mov_q    (vr27), vr23 */
	movq     -6000472(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000432(%rbp)  /* mov_l    vr28, $1 */
	movl     -6000552(%rbp), %r10d /* add_l    vr29, vr13, vr28 */
	addl     -6000432(%rbp), %r10d
	movl     %r10d, -6000424(%rbp)
	movl     -6000424(%rbp), %r10d /* mov_l    vr13, vr29 */
	movl     %r10d, -6000552(%rbp)
.L3:
	movl     -6000552(%rbp), %r10d /* cmplt_l  vr30, vr13, vr11 */
	cmpl     -6000560(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000416(%rbp)
	cmpl     $0, -6000416(%rbp)  /* cjmp_t   vr30, .L2 */
	jne      .L2
	movl     $0, -6000408(%rbp)  /* mov_l    vr31, $0 */
	movl     -6000408(%rbp), %r10d /* mov_l    vr15, vr31 */
	movl     %r10d, -6000536(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -6000400(%rbp)  /* mov_l    vr32, $0 */
	movl     -6000400(%rbp), %r10d /* mov_l    vr13, vr32 */
	movl     %r10d, -6000552(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -6000000(%rbp), %r10 /* localaddr vr33, $0 */
	movq     %r10, -6000392(%rbp)
	movl     -6000552(%rbp), %r10d /* mul_l    vr34, vr13, vr10 */
	imull    -6000568(%rbp), %r10d
	movl     %r10d, -6000384(%rbp)
	movl     -6000384(%rbp), %r10d /* add_l    vr35, vr34, vr15 */
	addl     -6000536(%rbp), %r10d
	movl     %r10d, -6000376(%rbp)
	movl     -6000376(%rbp), %r10d /* sconv_lq vr36, vr35 */
	movslq   %r10d, %r10
	movq     %r10, -6000368(%rbp)
	movq     -6000368(%rbp), %r10 /* mul_q    vr37, vr36, $8 */
	imulq    $8, %r10
	movq     %r10, -6000360(%rbp)
	movq     -6000392(%rbp), %r10 /* add_q    vr38, vr33, vr37 */
	addq     -6000360(%rbp), %r10
	movq     %r10, -6000352(%rbp)
	movq     -6000352(%rbp), %r11 /* mov_q    vr39, (vr38) */
	movq     (%r11), %r10
	movq     %r10, -6000344(%rbp)
	movq     -6000344(%rbp), %r10 /* mov_q    vr16, vr39 */
	movq     %r10, -6000528(%rbp)
	movl     $0, -6000336(%rbp)  /* mov_l    vr40, $0 */
	movl     -6000336(%rbp), %r10d /* mov_l    vr14, vr40 */
	movl     %r10d, -6000544(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2000000(%rbp), %r10 /* localaddr vr41, $4000000 */
	movq     %r10, -6000328(%rbp)
	movl     -6000552(%rbp), %r10d /* mul_l    vr42, vr13, vr10 */
	imull    -6000568(%rbp), %r10d
	movl     %r10d, -6000320(%rbp)
	movl     -6000320(%rbp), %r10d /* add_l    vr43, vr42, vr14 */
	addl     -6000544(%rbp), %r10d
	movl     %r10d, -6000312(%rbp)
	movl     -6000312(%rbp), %r10d /* sconv_lq vr44, vr43 */
	movslq   %r10d, %r10
	movq     %r10, -6000304(%rbp)
	movq     -6000304(%rbp), %r10 /* mul_q    vr45, vr44, $8 */
	imulq    $8, %r10
	movq     %r10, -6000296(%rbp)
	movq     -6000328(%rbp), %r10 /* add_q    vr46, vr41, vr45 */
	addq     -6000296(%rbp), %r10
	movq     %r10, -6000288(%rbp)
	movq     -6000288(%rbp), %r11 /* mov_q    vr47, (vr46) */
	movq     (%r11), %r10
	movq     %r10, -6000280(%rbp)
	movq     -6000280(%rbp), %r10 /* mov_q    vr17, vr47 */
	movq     %r10, -6000520(%rbp)
	leaq     -4000000(%rbp), %r10 /* localaddr vr48, $2000000 */
	movq     %r10, -6000272(%rbp)
	movl     -6000536(%rbp), %r10d /* mul_l    vr49, vr15, vr10 */
	imull    -6000568(%rbp), %r10d
	movl     %r10d, -6000264(%rbp)
	movl     -6000264(%rbp), %r10d /* add_l    vr50, vr49, vr14 */
	addl     -6000544(%rbp), %r10d
	movl     %r10d, -6000256(%rbp)
	movl     -6000256(%rbp), %r10d /* sconv_lq vr51, vr50 */
	movslq   %r10d, %r10
	movq     %r10, -6000248(%rbp)
	movq     -6000248(%rbp), %r10 /* mul_q    vr52, vr51, $8 */
	imulq    $8, %r10
	movq     %r10, -6000240(%rbp)
	movq     -6000272(%rbp), %r10 /* add_q    vr53, vr48, vr52 */
	addq     -6000240(%rbp), %r10
	movq     %r10, -6000232(%rbp)
	movq     -6000232(%rbp), %r11 /* mov_q    vr55, (vr53) */
	movq     (%r11), %r10
	movq     %r10, -6000216(%rbp)
	movq     -6000528(%rbp), %r10 /* mul_q    vr54, vr16, vr55 */
	imulq    -6000216(%rbp), %r10
	movq     %r10, -6000224(%rbp)
	movq     -6000520(%rbp), %r10 /* add_q    vr56, vr17, vr54 */
	addq     -6000224(%rbp), %r10
	movq     %r10, -6000208(%rbp)
	movq     -6000208(%rbp), %r10 /* mov_q    vr17, vr56 */
	movq     %r10, -6000520(%rbp)
	leaq     -2000000(%rbp), %r10 /* localaddr vr57, $4000000 */
	movq     %r10, -6000200(%rbp)
	movl     -6000552(%rbp), %r10d /* mul_l    vr58, vr13, vr10 */
	imull    -6000568(%rbp), %r10d
	movl     %r10d, -6000192(%rbp)
	movl     -6000192(%rbp), %r10d /* add_l    vr59, vr58, vr14 */
	addl     -6000544(%rbp), %r10d
	movl     %r10d, -6000184(%rbp)
	movl     -6000184(%rbp), %r10d /* sconv_lq vr60, vr59 */
	movslq   %r10d, %r10
	movq     %r10, -6000176(%rbp)
	movq     -6000176(%rbp), %r10 /* mul_q    vr61, vr60, $8 */
	imulq    $8, %r10
	movq     %r10, -6000168(%rbp)
	movq     -6000200(%rbp), %r10 /* add_q    vr62, vr57, vr61 */
	addq     -6000168(%rbp), %r10
	movq     %r10, -6000160(%rbp)
	movq     -6000160(%rbp), %r11 /* mov_q    (vr62), vr17 */
	movq     -6000520(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000152(%rbp)  /* mov_l    vr63, $1 */
	movl     -6000544(%rbp), %r10d /* add_l    vr64, vr14, vr63 */
	addl     -6000152(%rbp), %r10d
	movl     %r10d, -6000144(%rbp)
	movl     -6000144(%rbp), %r10d /* mov_l    vr14, vr64 */
	movl     %r10d, -6000544(%rbp)
.L9:
	movl     -6000544(%rbp), %r10d /* cmplt_l  vr65, vr14, vr10 */
	cmpl     -6000568(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000136(%rbp)
	cmpl     $0, -6000136(%rbp)  /* cjmp_t   vr65, .L8 */
	jne      .L8
	movl     $1, -6000128(%rbp)  /* mov_l    vr66, $1 */
	movl     -6000552(%rbp), %r10d /* add_l    vr67, vr13, vr66 */
	addl     -6000128(%rbp), %r10d
	movl     %r10d, -6000120(%rbp)
	movl     -6000120(%rbp), %r10d /* mov_l    vr13, vr67 */
	movl     %r10d, -6000552(%rbp)
.L7:
	movl     -6000552(%rbp), %r10d /* cmplt_l  vr68, vr13, vr10 */
	cmpl     -6000568(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000112(%rbp)
	cmpl     $0, -6000112(%rbp)  /* cjmp_t   vr68, .L6 */
	jne      .L6
	movl     $1, -6000104(%rbp)  /* mov_l    vr69, $1 */
	movl     -6000536(%rbp), %r10d /* add_l    vr70, vr15, vr69 */
	addl     -6000104(%rbp), %r10d
	movl     %r10d, -6000096(%rbp)
	movl     -6000096(%rbp), %r10d /* mov_l    vr15, vr70 */
	movl     %r10d, -6000536(%rbp)
.L5:
	movl     -6000536(%rbp), %r10d /* cmplt_l  vr71, vr15, vr10 */
	cmpl     -6000568(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000088(%rbp)
	cmpl     $0, -6000088(%rbp)  /* cjmp_t   vr71, .L4 */
	jne      .L4
	movl     $0, -6000080(%rbp)  /* mov_l    vr72, $0 */
	movl     -6000080(%rbp), %r10d /* mov_l    vr13, vr72 */
	movl     %r10d, -6000552(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r10 /* localaddr vr73, $4000000 */
	movq     %r10, -6000072(%rbp)
	movl     -6000552(%rbp), %r10d /* sconv_lq vr74, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000064(%rbp)
	movq     -6000064(%rbp), %r10 /* mul_q    vr75, vr74, $8 */
	imulq    $8, %r10
	movq     %r10, -6000056(%rbp)
	movq     -6000072(%rbp), %r10 /* add_q    vr76, vr73, vr75 */
	addq     -6000056(%rbp), %r10
	movq     %r10, -6000048(%rbp)
	movq     -6000048(%rbp), %r11 /* mov_q    vr1, (vr76) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -6000040(%rbp)  /* mov_l    vr77, $1 */
	movl     -6000552(%rbp), %r10d /* add_l    vr78, vr13, vr77 */
	addl     -6000040(%rbp), %r10d
	movl     %r10d, -6000032(%rbp)
	movl     -6000032(%rbp), %r10d /* mov_l    vr13, vr78 */
	movl     %r10d, -6000552(%rbp)
.L11:
	movl     $250000, -6000024(%rbp) /* mov_l    vr79, $250000 */
	movl     -6000552(%rbp), %r10d /* cmplt_l  vr80, vr13, vr79 */
	cmpl     -6000024(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000016(%rbp)
	cmpl     $0, -6000016(%rbp)  /* cjmp_t   vr80, .L10 */
	jne      .L10
	movl     $0, -6000008(%rbp)  /* mov_l    vr81, $0 */
	movl     -6000008(%rbp), %eax /* mov_l    vr0, vr81 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $6000576, %rsp      /* leave    $6000000 */
	popq     %rbp
	ret                          /* ret       */
