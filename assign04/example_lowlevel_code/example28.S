
/* Allocating storage for function 'read_m10x10' */
/* variable 'arr' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* Function 'read_m10x10' uses 0 bytes of memory and 12 virtual registers */
/* Function 'read_m10x10' uses 88 total bytes of memory storage for vregs */
/* Function 'read_m10x10': placing vreg storage at offset -88 from %rbp */
/* Function 'read_m10x10': 96 bytes of local storage allocated in stack frame */

/* Allocating storage for function 'main' */
/* variable 'a' allocated 800 bytes of storage at offset 0 */
/* variable 'b' allocated 800 bytes of storage at offset 800 */
/* variable 'c' allocated 800 bytes of storage at offset 1600 */
/* variable 'M' allocated vreg 10 */
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'k' allocated vreg 13 */
/* variable 'r' allocated vreg 14 */
/* variable 'val' allocated vreg 15 */
/* Function 'main' uses 2400 bytes of memory and 16 virtual registers */
/* Function 'main': placing memory variables at offset -2400 from %rbp */
/* Function 'main' uses 560 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -2960 from %rbp */
/* Function 'main': 2960 bytes of local storage allocated in stack frame */

	.section .text

	.globl read_m10x10
read_m10x10:
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
	movl     $100, -16(%rbp)     /* mov_l    vr19, $100 */
	movl     -80(%rbp), %r10d    /* cmplt_l  vr20, vr11, vr19 */
	cmpl     -16(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -8(%rbp)
	cmpl     $0, -8(%rbp)        /* cjmp_t   vr20, .L0 */
	jne      .L0
	jmp      .Lread_m10x10_return /* jmp      .Lread_m10x10_return */
.Lread_m10x10_return:
	addq     $96, %rsp           /* leave    $0 */
	popq     %rbp
	ret                          /* ret       */

	.globl main
main:
	pushq    %rbp                /* enter    $2400 */
	movq     %rsp, %rbp
	subq     $2960, %rsp
	movl     $10, -2912(%rbp)    /* mov_l    vr16, $10 */
	movl     -2912(%rbp), %r10d  /* mov_l    vr10, vr16 */
	movl     %r10d, -2960(%rbp)
	leaq     -2400(%rbp), %r10   /* localaddr vr17, $0 */
	movq     %r10, -2904(%rbp)
	movq     -2904(%rbp), %rdi   /* mov_q    vr1, vr17 */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr18, $800 */
	movq     %r10, -2896(%rbp)
	movq     -2896(%rbp), %rdi   /* mov_q    vr1, vr18 */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, -2888(%rbp)     /* mov_l    vr19, $0 */
	movl     -2888(%rbp), %r10d  /* mov_l    vr11, vr19 */
	movl     %r10d, -2952(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movq     $0, -2880(%rbp)     /* mov_q    vr20, $0 */
	leaq     -800(%rbp), %r10    /* localaddr vr21, $1600 */
	movq     %r10, -2872(%rbp)
	movl     -2952(%rbp), %r10d  /* sconv_lq vr22, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2864(%rbp)
	movq     -2864(%rbp), %r10   /* mul_q    vr23, vr22, $8 */
	imulq    $8, %r10
	movq     %r10, -2856(%rbp)
	movq     -2872(%rbp), %r10   /* add_q    vr24, vr21, vr23 */
	addq     -2856(%rbp), %r10
	movq     %r10, -2848(%rbp)
	movq     -2848(%rbp), %r11   /* mov_q    (vr24), vr20 */
	movq     -2880(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2840(%rbp)     /* mov_l    vr25, $1 */
	movl     -2952(%rbp), %r10d  /* add_l    vr26, vr11, vr25 */
	addl     -2840(%rbp), %r10d
	movl     %r10d, -2832(%rbp)
	movl     -2832(%rbp), %r10d  /* mov_l    vr11, vr26 */
	movl     %r10d, -2952(%rbp)
.L3:
	movl     $100, -2824(%rbp)   /* mov_l    vr27, $100 */
	movl     -2952(%rbp), %r10d  /* cmplt_l  vr28, vr11, vr27 */
	cmpl     -2824(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2816(%rbp)
	cmpl     $0, -2816(%rbp)     /* cjmp_t   vr28, .L2 */
	jne      .L2
	movl     $0, -2808(%rbp)     /* mov_l    vr29, $0 */
	movl     -2808(%rbp), %r10d  /* mov_l    vr13, vr29 */
	movl     %r10d, -2936(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -2800(%rbp)     /* mov_l    vr30, $0 */
	movl     -2800(%rbp), %r10d  /* mov_l    vr11, vr30 */
	movl     %r10d, -2952(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -2400(%rbp), %r10   /* localaddr vr31, $0 */
	movq     %r10, -2792(%rbp)
	movl     -2952(%rbp), %r10d  /* mul_l    vr32, vr11, vr10 */
	imull    -2960(%rbp), %r10d
	movl     %r10d, -2784(%rbp)
	movl     -2784(%rbp), %r10d  /* add_l    vr33, vr32, vr13 */
	addl     -2936(%rbp), %r10d
	movl     %r10d, -2776(%rbp)
	movl     -2776(%rbp), %r10d  /* sconv_lq vr34, vr33 */
	movslq   %r10d, %r10
	movq     %r10, -2768(%rbp)
	movq     -2768(%rbp), %r10   /* mul_q    vr35, vr34, $8 */
	imulq    $8, %r10
	movq     %r10, -2760(%rbp)
	movq     -2792(%rbp), %r10   /* add_q    vr36, vr31, vr35 */
	addq     -2760(%rbp), %r10
	movq     %r10, -2752(%rbp)
	movq     -2752(%rbp), %r11   /* mov_q    vr37, (vr36) */
	movq     (%r11), %r10
	movq     %r10, -2744(%rbp)
	movq     -2744(%rbp), %r10   /* mov_q    vr14, vr37 */
	movq     %r10, -2928(%rbp)
	movl     $0, -2736(%rbp)     /* mov_l    vr38, $0 */
	movl     -2736(%rbp), %r10d  /* mov_l    vr12, vr38 */
	movl     %r10d, -2944(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -800(%rbp), %r10    /* localaddr vr39, $1600 */
	movq     %r10, -2728(%rbp)
	movl     -2952(%rbp), %r10d  /* mul_l    vr40, vr11, vr10 */
	imull    -2960(%rbp), %r10d
	movl     %r10d, -2720(%rbp)
	movl     -2720(%rbp), %r10d  /* add_l    vr41, vr40, vr12 */
	addl     -2944(%rbp), %r10d
	movl     %r10d, -2712(%rbp)
	movl     -2712(%rbp), %r10d  /* sconv_lq vr42, vr41 */
	movslq   %r10d, %r10
	movq     %r10, -2704(%rbp)
	movq     -2704(%rbp), %r10   /* mul_q    vr43, vr42, $8 */
	imulq    $8, %r10
	movq     %r10, -2696(%rbp)
	movq     -2728(%rbp), %r10   /* add_q    vr44, vr39, vr43 */
	addq     -2696(%rbp), %r10
	movq     %r10, -2688(%rbp)
	movq     -2688(%rbp), %r11   /* mov_q    vr45, (vr44) */
	movq     (%r11), %r10
	movq     %r10, -2680(%rbp)
	movq     -2680(%rbp), %r10   /* mov_q    vr15, vr45 */
	movq     %r10, -2920(%rbp)
	leaq     -1600(%rbp), %r10   /* localaddr vr46, $800 */
	movq     %r10, -2672(%rbp)
	movl     -2936(%rbp), %r10d  /* mul_l    vr47, vr13, vr10 */
	imull    -2960(%rbp), %r10d
	movl     %r10d, -2664(%rbp)
	movl     -2664(%rbp), %r10d  /* add_l    vr48, vr47, vr12 */
	addl     -2944(%rbp), %r10d
	movl     %r10d, -2656(%rbp)
	movl     -2656(%rbp), %r10d  /* sconv_lq vr49, vr48 */
	movslq   %r10d, %r10
	movq     %r10, -2648(%rbp)
	movq     -2648(%rbp), %r10   /* mul_q    vr50, vr49, $8 */
	imulq    $8, %r10
	movq     %r10, -2640(%rbp)
	movq     -2672(%rbp), %r10   /* add_q    vr51, vr46, vr50 */
	addq     -2640(%rbp), %r10
	movq     %r10, -2632(%rbp)
	movq     -2632(%rbp), %r11   /* mov_q    vr53, (vr51) */
	movq     (%r11), %r10
	movq     %r10, -2616(%rbp)
	movq     -2928(%rbp), %r10   /* mul_q    vr52, vr14, vr53 */
	imulq    -2616(%rbp), %r10
	movq     %r10, -2624(%rbp)
	movq     -2920(%rbp), %r10   /* add_q    vr54, vr15, vr52 */
	addq     -2624(%rbp), %r10
	movq     %r10, -2608(%rbp)
	movq     -2608(%rbp), %r10   /* mov_q    vr15, vr54 */
	movq     %r10, -2920(%rbp)
	leaq     -800(%rbp), %r10    /* localaddr vr55, $1600 */
	movq     %r10, -2600(%rbp)
	movl     -2952(%rbp), %r10d  /* mul_l    vr56, vr11, vr10 */
	imull    -2960(%rbp), %r10d
	movl     %r10d, -2592(%rbp)
	movl     -2592(%rbp), %r10d  /* add_l    vr57, vr56, vr12 */
	addl     -2944(%rbp), %r10d
	movl     %r10d, -2584(%rbp)
	movl     -2584(%rbp), %r10d  /* sconv_lq vr58, vr57 */
	movslq   %r10d, %r10
	movq     %r10, -2576(%rbp)
	movq     -2576(%rbp), %r10   /* mul_q    vr59, vr58, $8 */
	imulq    $8, %r10
	movq     %r10, -2568(%rbp)
	movq     -2600(%rbp), %r10   /* add_q    vr60, vr55, vr59 */
	addq     -2568(%rbp), %r10
	movq     %r10, -2560(%rbp)
	movq     -2560(%rbp), %r11   /* mov_q    (vr60), vr15 */
	movq     -2920(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2552(%rbp)     /* mov_l    vr61, $1 */
	movl     -2944(%rbp), %r10d  /* add_l    vr62, vr12, vr61 */
	addl     -2552(%rbp), %r10d
	movl     %r10d, -2544(%rbp)
	movl     -2544(%rbp), %r10d  /* mov_l    vr12, vr62 */
	movl     %r10d, -2944(%rbp)
.L9:
	movl     -2944(%rbp), %r10d  /* cmplt_l  vr63, vr12, vr10 */
	cmpl     -2960(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2536(%rbp)
	cmpl     $0, -2536(%rbp)     /* cjmp_t   vr63, .L8 */
	jne      .L8
	movl     $1, -2528(%rbp)     /* mov_l    vr64, $1 */
	movl     -2952(%rbp), %r10d  /* add_l    vr65, vr11, vr64 */
	addl     -2528(%rbp), %r10d
	movl     %r10d, -2520(%rbp)
	movl     -2520(%rbp), %r10d  /* mov_l    vr11, vr65 */
	movl     %r10d, -2952(%rbp)
.L7:
	movl     -2952(%rbp), %r10d  /* cmplt_l  vr66, vr11, vr10 */
	cmpl     -2960(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2512(%rbp)
	cmpl     $0, -2512(%rbp)     /* cjmp_t   vr66, .L6 */
	jne      .L6
	movl     $1, -2504(%rbp)     /* mov_l    vr67, $1 */
	movl     -2936(%rbp), %r10d  /* add_l    vr68, vr13, vr67 */
	addl     -2504(%rbp), %r10d
	movl     %r10d, -2496(%rbp)
	movl     -2496(%rbp), %r10d  /* mov_l    vr13, vr68 */
	movl     %r10d, -2936(%rbp)
.L5:
	movl     -2936(%rbp), %r10d  /* cmplt_l  vr69, vr13, vr10 */
	cmpl     -2960(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2488(%rbp)
	cmpl     $0, -2488(%rbp)     /* cjmp_t   vr69, .L4 */
	jne      .L4
	movl     $0, -2480(%rbp)     /* mov_l    vr70, $0 */
	movl     -2480(%rbp), %r10d  /* mov_l    vr11, vr70 */
	movl     %r10d, -2952(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr71, $1600 */
	movq     %r10, -2472(%rbp)
	movl     -2952(%rbp), %r10d  /* sconv_lq vr72, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2464(%rbp)
	movq     -2464(%rbp), %r10   /* mul_q    vr73, vr72, $8 */
	imulq    $8, %r10
	movq     %r10, -2456(%rbp)
	movq     -2472(%rbp), %r10   /* add_q    vr74, vr71, vr73 */
	addq     -2456(%rbp), %r10
	movq     %r10, -2448(%rbp)
	movq     -2448(%rbp), %r11   /* mov_q    vr1, (vr74) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -2440(%rbp)     /* mov_l    vr75, $1 */
	movl     -2952(%rbp), %r10d  /* add_l    vr76, vr11, vr75 */
	addl     -2440(%rbp), %r10d
	movl     %r10d, -2432(%rbp)
	movl     -2432(%rbp), %r10d  /* mov_l    vr11, vr76 */
	movl     %r10d, -2952(%rbp)
.L11:
	movl     $100, -2424(%rbp)   /* mov_l    vr77, $100 */
	movl     -2952(%rbp), %r10d  /* cmplt_l  vr78, vr11, vr77 */
	cmpl     -2424(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2416(%rbp)
	cmpl     $0, -2416(%rbp)     /* cjmp_t   vr78, .L10 */
	jne      .L10
	movl     $0, -2408(%rbp)     /* mov_l    vr79, $0 */
	movl     -2408(%rbp), %eax   /* mov_l    vr0, vr79 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $2960, %rsp         /* leave    $2400 */
	popq     %rbp
	ret                          /* ret       */
