
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
/* Function 'main' uses 816 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -3216 from %rbp */
/* Function 'main': 3216 bytes of local storage allocated in stack frame */

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
	subq     $3216, %rsp
	movl     $10, -3168(%rbp)    /* mov_l    vr16, $10 */
	movl     -3168(%rbp), %r10d  /* mov_l    vr10, vr16 */
	movl     %r10d, -3216(%rbp)
	leaq     -2400(%rbp), %r10   /* localaddr vr17, $0 */
	movq     %r10, -3160(%rbp)
	movl     $0, -3152(%rbp)     /* mov_l    vr18, $0 */
	movl     -3152(%rbp), %r10d  /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -3144(%rbp)
	movq     -3144(%rbp), %r10   /* mul_q    vr20, vr19, $80 */
	imulq    $80, %r10
	movq     %r10, -3136(%rbp)
	movq     -3160(%rbp), %r10   /* add_q    vr21, vr17, vr20 */
	addq     -3136(%rbp), %r10
	movq     %r10, -3128(%rbp)
	movl     $0, -3120(%rbp)     /* mov_l    vr22, $0 */
	movl     -3120(%rbp), %r10d  /* sconv_lq vr23, vr22 */
	movslq   %r10d, %r10
	movq     %r10, -3112(%rbp)
	movq     -3112(%rbp), %r10   /* mul_q    vr24, vr23, $8 */
	imulq    $8, %r10
	movq     %r10, -3104(%rbp)
	movq     -3128(%rbp), %r10   /* add_q    vr25, vr21, vr24 */
	addq     -3104(%rbp), %r10
	movq     %r10, -3096(%rbp)
	movq     -3096(%rbp), %rdi   /* mov_q    vr1, vr25 */
	call     read_m10x10         /* call     read_m10x10 */
	leaq     -1600(%rbp), %r10   /* localaddr vr26, $800 */
	movq     %r10, -3088(%rbp)
	movl     $0, -3080(%rbp)     /* mov_l    vr27, $0 */
	movl     -3080(%rbp), %r10d  /* sconv_lq vr28, vr27 */
	movslq   %r10d, %r10
	movq     %r10, -3072(%rbp)
	movq     -3072(%rbp), %r10   /* mul_q    vr29, vr28, $80 */
	imulq    $80, %r10
	movq     %r10, -3064(%rbp)
	movq     -3088(%rbp), %r10   /* add_q    vr30, vr26, vr29 */
	addq     -3064(%rbp), %r10
	movq     %r10, -3056(%rbp)
	movl     $0, -3048(%rbp)     /* mov_l    vr31, $0 */
	movl     -3048(%rbp), %r10d  /* sconv_lq vr32, vr31 */
	movslq   %r10d, %r10
	movq     %r10, -3040(%rbp)
	movq     -3040(%rbp), %r10   /* mul_q    vr33, vr32, $8 */
	imulq    $8, %r10
	movq     %r10, -3032(%rbp)
	movq     -3056(%rbp), %r10   /* add_q    vr34, vr30, vr33 */
	addq     -3032(%rbp), %r10
	movq     %r10, -3024(%rbp)
	movq     -3024(%rbp), %rdi   /* mov_q    vr1, vr34 */
	call     read_m10x10         /* call     read_m10x10 */
	movl     $0, -3016(%rbp)     /* mov_l    vr35, $0 */
	movl     -3016(%rbp), %r10d  /* mov_l    vr11, vr35 */
	movl     %r10d, -3208(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movl     $0, -3008(%rbp)     /* mov_l    vr36, $0 */
	movl     -3008(%rbp), %r10d  /* mov_l    vr12, vr36 */
	movl     %r10d, -3200(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movq     $0, -3000(%rbp)     /* mov_q    vr37, $0 */
	leaq     -800(%rbp), %r10    /* localaddr vr38, $1600 */
	movq     %r10, -2992(%rbp)
	movl     -3208(%rbp), %r10d  /* sconv_lq vr39, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2984(%rbp)
	movq     -2984(%rbp), %r10   /* mul_q    vr40, vr39, $80 */
	imulq    $80, %r10
	movq     %r10, -2976(%rbp)
	movq     -2992(%rbp), %r10   /* add_q    vr41, vr38, vr40 */
	addq     -2976(%rbp), %r10
	movq     %r10, -2968(%rbp)
	movl     -3200(%rbp), %r10d  /* sconv_lq vr42, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -2960(%rbp)
	movq     -2960(%rbp), %r10   /* mul_q    vr43, vr42, $8 */
	imulq    $8, %r10
	movq     %r10, -2952(%rbp)
	movq     -2968(%rbp), %r10   /* add_q    vr44, vr41, vr43 */
	addq     -2952(%rbp), %r10
	movq     %r10, -2944(%rbp)
	movq     -2944(%rbp), %r11   /* mov_q    (vr44), vr37 */
	movq     -3000(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2936(%rbp)     /* mov_l    vr45, $1 */
	movl     -3200(%rbp), %r10d  /* add_l    vr46, vr12, vr45 */
	addl     -2936(%rbp), %r10d
	movl     %r10d, -2928(%rbp)
	movl     -2928(%rbp), %r10d  /* mov_l    vr12, vr46 */
	movl     %r10d, -3200(%rbp)
.L5:
	movl     -3200(%rbp), %r10d  /* cmplt_l  vr47, vr12, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2920(%rbp)
	cmpl     $0, -2920(%rbp)     /* cjmp_t   vr47, .L4 */
	jne      .L4
	movl     $1, -2912(%rbp)     /* mov_l    vr48, $1 */
	movl     -3208(%rbp), %r10d  /* add_l    vr49, vr11, vr48 */
	addl     -2912(%rbp), %r10d
	movl     %r10d, -2904(%rbp)
	movl     -2904(%rbp), %r10d  /* mov_l    vr11, vr49 */
	movl     %r10d, -3208(%rbp)
.L3:
	movl     -3208(%rbp), %r10d  /* cmplt_l  vr50, vr11, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2896(%rbp)
	cmpl     $0, -2896(%rbp)     /* cjmp_t   vr50, .L2 */
	jne      .L2
	movl     $0, -2888(%rbp)     /* mov_l    vr51, $0 */
	movl     -2888(%rbp), %r10d  /* mov_l    vr13, vr51 */
	movl     %r10d, -3192(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	movl     $0, -2880(%rbp)     /* mov_l    vr52, $0 */
	movl     -2880(%rbp), %r10d  /* mov_l    vr11, vr52 */
	movl     %r10d, -3208(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -2400(%rbp), %r10   /* localaddr vr53, $0 */
	movq     %r10, -2872(%rbp)
	movl     -3208(%rbp), %r10d  /* sconv_lq vr54, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2864(%rbp)
	movq     -2864(%rbp), %r10   /* mul_q    vr55, vr54, $80 */
	imulq    $80, %r10
	movq     %r10, -2856(%rbp)
	movq     -2872(%rbp), %r10   /* add_q    vr56, vr53, vr55 */
	addq     -2856(%rbp), %r10
	movq     %r10, -2848(%rbp)
	movl     -3192(%rbp), %r10d  /* sconv_lq vr57, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -2840(%rbp)
	movq     -2840(%rbp), %r10   /* mul_q    vr58, vr57, $8 */
	imulq    $8, %r10
	movq     %r10, -2832(%rbp)
	movq     -2848(%rbp), %r10   /* add_q    vr59, vr56, vr58 */
	addq     -2832(%rbp), %r10
	movq     %r10, -2824(%rbp)
	movq     -2824(%rbp), %r11   /* mov_q    vr60, (vr59) */
	movq     (%r11), %r10
	movq     %r10, -2816(%rbp)
	movq     -2816(%rbp), %r10   /* mov_q    vr14, vr60 */
	movq     %r10, -3184(%rbp)
	movl     $0, -2808(%rbp)     /* mov_l    vr61, $0 */
	movl     -2808(%rbp), %r10d  /* mov_l    vr12, vr61 */
	movl     %r10d, -3200(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -800(%rbp), %r10    /* localaddr vr62, $1600 */
	movq     %r10, -2800(%rbp)
	movl     -3208(%rbp), %r10d  /* sconv_lq vr63, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2792(%rbp)
	movq     -2792(%rbp), %r10   /* mul_q    vr64, vr63, $80 */
	imulq    $80, %r10
	movq     %r10, -2784(%rbp)
	movq     -2800(%rbp), %r10   /* add_q    vr65, vr62, vr64 */
	addq     -2784(%rbp), %r10
	movq     %r10, -2776(%rbp)
	movl     -3200(%rbp), %r10d  /* sconv_lq vr66, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -2768(%rbp)
	movq     -2768(%rbp), %r10   /* mul_q    vr67, vr66, $8 */
	imulq    $8, %r10
	movq     %r10, -2760(%rbp)
	movq     -2776(%rbp), %r10   /* add_q    vr68, vr65, vr67 */
	addq     -2760(%rbp), %r10
	movq     %r10, -2752(%rbp)
	movq     -2752(%rbp), %r11   /* mov_q    vr69, (vr68) */
	movq     (%r11), %r10
	movq     %r10, -2744(%rbp)
	movq     -2744(%rbp), %r10   /* mov_q    vr15, vr69 */
	movq     %r10, -3176(%rbp)
	leaq     -1600(%rbp), %r10   /* localaddr vr70, $800 */
	movq     %r10, -2736(%rbp)
	movl     -3192(%rbp), %r10d  /* sconv_lq vr71, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -2728(%rbp)
	movq     -2728(%rbp), %r10   /* mul_q    vr72, vr71, $80 */
	imulq    $80, %r10
	movq     %r10, -2720(%rbp)
	movq     -2736(%rbp), %r10   /* add_q    vr73, vr70, vr72 */
	addq     -2720(%rbp), %r10
	movq     %r10, -2712(%rbp)
	movl     -3200(%rbp), %r10d  /* sconv_lq vr74, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -2704(%rbp)
	movq     -2704(%rbp), %r10   /* mul_q    vr75, vr74, $8 */
	imulq    $8, %r10
	movq     %r10, -2696(%rbp)
	movq     -2712(%rbp), %r10   /* add_q    vr76, vr73, vr75 */
	addq     -2696(%rbp), %r10
	movq     %r10, -2688(%rbp)
	movq     -2688(%rbp), %r11   /* mov_q    vr78, (vr76) */
	movq     (%r11), %r10
	movq     %r10, -2672(%rbp)
	movq     -3184(%rbp), %r10   /* mul_q    vr77, vr14, vr78 */
	imulq    -2672(%rbp), %r10
	movq     %r10, -2680(%rbp)
	movq     -3176(%rbp), %r10   /* add_q    vr79, vr15, vr77 */
	addq     -2680(%rbp), %r10
	movq     %r10, -2664(%rbp)
	movq     -2664(%rbp), %r10   /* mov_q    vr15, vr79 */
	movq     %r10, -3176(%rbp)
	leaq     -800(%rbp), %r10    /* localaddr vr80, $1600 */
	movq     %r10, -2656(%rbp)
	movl     -3208(%rbp), %r10d  /* sconv_lq vr81, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2648(%rbp)
	movq     -2648(%rbp), %r10   /* mul_q    vr82, vr81, $80 */
	imulq    $80, %r10
	movq     %r10, -2640(%rbp)
	movq     -2656(%rbp), %r10   /* add_q    vr83, vr80, vr82 */
	addq     -2640(%rbp), %r10
	movq     %r10, -2632(%rbp)
	movl     -3200(%rbp), %r10d  /* sconv_lq vr84, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -2624(%rbp)
	movq     -2624(%rbp), %r10   /* mul_q    vr85, vr84, $8 */
	imulq    $8, %r10
	movq     %r10, -2616(%rbp)
	movq     -2632(%rbp), %r10   /* add_q    vr86, vr83, vr85 */
	addq     -2616(%rbp), %r10
	movq     %r10, -2608(%rbp)
	movq     -2608(%rbp), %r11   /* mov_q    (vr86), vr15 */
	movq     -3176(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -2600(%rbp)     /* mov_l    vr87, $1 */
	movl     -3200(%rbp), %r10d  /* add_l    vr88, vr12, vr87 */
	addl     -2600(%rbp), %r10d
	movl     %r10d, -2592(%rbp)
	movl     -2592(%rbp), %r10d  /* mov_l    vr12, vr88 */
	movl     %r10d, -3200(%rbp)
.L11:
	movl     -3200(%rbp), %r10d  /* cmplt_l  vr89, vr12, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2584(%rbp)
	cmpl     $0, -2584(%rbp)     /* cjmp_t   vr89, .L10 */
	jne      .L10
	movl     $1, -2576(%rbp)     /* mov_l    vr90, $1 */
	movl     -3208(%rbp), %r10d  /* add_l    vr91, vr11, vr90 */
	addl     -2576(%rbp), %r10d
	movl     %r10d, -2568(%rbp)
	movl     -2568(%rbp), %r10d  /* mov_l    vr11, vr91 */
	movl     %r10d, -3208(%rbp)
.L9:
	movl     -3208(%rbp), %r10d  /* cmplt_l  vr92, vr11, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2560(%rbp)
	cmpl     $0, -2560(%rbp)     /* cjmp_t   vr92, .L8 */
	jne      .L8
	movl     $1, -2552(%rbp)     /* mov_l    vr93, $1 */
	movl     -3192(%rbp), %r10d  /* add_l    vr94, vr13, vr93 */
	addl     -2552(%rbp), %r10d
	movl     %r10d, -2544(%rbp)
	movl     -2544(%rbp), %r10d  /* mov_l    vr13, vr94 */
	movl     %r10d, -3192(%rbp)
.L7:
	movl     -3192(%rbp), %r10d  /* cmplt_l  vr95, vr13, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2536(%rbp)
	cmpl     $0, -2536(%rbp)     /* cjmp_t   vr95, .L6 */
	jne      .L6
	movl     $0, -2528(%rbp)     /* mov_l    vr96, $0 */
	movl     -2528(%rbp), %r10d  /* mov_l    vr11, vr96 */
	movl     %r10d, -3208(%rbp)
	jmp      .L13                /* jmp      .L13 */
.L12:
	movl     $0, -2520(%rbp)     /* mov_l    vr97, $0 */
	movl     -2520(%rbp), %r10d  /* mov_l    vr12, vr97 */
	movl     %r10d, -3200(%rbp)
	jmp      .L15                /* jmp      .L15 */
.L14:
	leaq     -800(%rbp), %r10    /* localaddr vr98, $1600 */
	movq     %r10, -2512(%rbp)
	movl     -3208(%rbp), %r10d  /* sconv_lq vr99, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -2504(%rbp)
	movq     -2504(%rbp), %r10   /* mul_q    vr100, vr99, $80 */
	imulq    $80, %r10
	movq     %r10, -2496(%rbp)
	movq     -2512(%rbp), %r10   /* add_q    vr101, vr98, vr100 */
	addq     -2496(%rbp), %r10
	movq     %r10, -2488(%rbp)
	movl     -3200(%rbp), %r10d  /* sconv_lq vr102, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -2480(%rbp)
	movq     -2480(%rbp), %r10   /* mul_q    vr103, vr102, $8 */
	imulq    $8, %r10
	movq     %r10, -2472(%rbp)
	movq     -2488(%rbp), %r10   /* add_q    vr104, vr101, vr103 */
	addq     -2472(%rbp), %r10
	movq     %r10, -2464(%rbp)
	movq     -2464(%rbp), %r11   /* mov_q    vr1, (vr104) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -2456(%rbp)     /* mov_l    vr105, $1 */
	movl     -3200(%rbp), %r10d  /* add_l    vr106, vr12, vr105 */
	addl     -2456(%rbp), %r10d
	movl     %r10d, -2448(%rbp)
	movl     -2448(%rbp), %r10d  /* mov_l    vr12, vr106 */
	movl     %r10d, -3200(%rbp)
.L15:
	movl     -3200(%rbp), %r10d  /* cmplt_l  vr107, vr12, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2440(%rbp)
	cmpl     $0, -2440(%rbp)     /* cjmp_t   vr107, .L14 */
	jne      .L14
	movl     $1, -2432(%rbp)     /* mov_l    vr108, $1 */
	movl     -3208(%rbp), %r10d  /* add_l    vr109, vr11, vr108 */
	addl     -2432(%rbp), %r10d
	movl     %r10d, -2424(%rbp)
	movl     -2424(%rbp), %r10d  /* mov_l    vr11, vr109 */
	movl     %r10d, -3208(%rbp)
.L13:
	movl     -3208(%rbp), %r10d  /* cmplt_l  vr110, vr11, vr10 */
	cmpl     -3216(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -2416(%rbp)
	cmpl     $0, -2416(%rbp)     /* cjmp_t   vr110, .L12 */
	jne      .L12
	movl     $0, -2408(%rbp)     /* mov_l    vr111, $0 */
	movl     -2408(%rbp), %eax   /* mov_l    vr0, vr111 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $3216, %rsp         /* leave    $2400 */
	popq     %rbp
	ret                          /* ret       */
