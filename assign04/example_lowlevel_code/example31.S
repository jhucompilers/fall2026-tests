
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
/* variable 'i' allocated vreg 11 */
/* variable 'j' allocated vreg 12 */
/* variable 'k' allocated vreg 13 */
/* variable 'r' allocated vreg 14 */
/* variable 'val' allocated vreg 15 */
/* Function 'main' uses 6000000 bytes of memory and 16 virtual registers */
/* Function 'main': placing memory variables at offset -6000000 from %rbp */
/* Function 'main' uses 816 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -6000816 from %rbp */
/* Function 'main': 6000816 bytes of local storage allocated in stack frame */

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
	subq     $6000816, %rsp
	movl     $500, -6000768(%rbp) /* mov_l    vr16, $500 */
	movl     -6000768(%rbp), %r10d /* mov_l    vr10, vr16 */
	movl     %r10d, -6000816(%rbp)
	leaq     -6000000(%rbp), %r10 /* localaddr vr17, $0 */
	movq     %r10, -6000760(%rbp)
	movl     $0, -6000752(%rbp)  /* mov_l    vr18, $0 */
	movl     -6000752(%rbp), %r10d /* sconv_lq vr19, vr18 */
	movslq   %r10d, %r10
	movq     %r10, -6000744(%rbp)
	movq     -6000744(%rbp), %r10 /* mul_q    vr20, vr19, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000736(%rbp)
	movq     -6000760(%rbp), %r10 /* add_q    vr21, vr17, vr20 */
	addq     -6000736(%rbp), %r10
	movq     %r10, -6000728(%rbp)
	movl     $0, -6000720(%rbp)  /* mov_l    vr22, $0 */
	movl     -6000720(%rbp), %r10d /* sconv_lq vr23, vr22 */
	movslq   %r10d, %r10
	movq     %r10, -6000712(%rbp)
	movq     -6000712(%rbp), %r10 /* mul_q    vr24, vr23, $8 */
	imulq    $8, %r10
	movq     %r10, -6000704(%rbp)
	movq     -6000728(%rbp), %r10 /* add_q    vr25, vr21, vr24 */
	addq     -6000704(%rbp), %r10
	movq     %r10, -6000696(%rbp)
	movq     -6000696(%rbp), %rdi /* mov_q    vr1, vr25 */
	call     read_m500x500       /* call     read_m500x500 */
	leaq     -4000000(%rbp), %r10 /* localaddr vr26, $2000000 */
	movq     %r10, -6000688(%rbp)
	movl     $0, -6000680(%rbp)  /* mov_l    vr27, $0 */
	movl     -6000680(%rbp), %r10d /* sconv_lq vr28, vr27 */
	movslq   %r10d, %r10
	movq     %r10, -6000672(%rbp)
	movq     -6000672(%rbp), %r10 /* mul_q    vr29, vr28, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000664(%rbp)
	movq     -6000688(%rbp), %r10 /* add_q    vr30, vr26, vr29 */
	addq     -6000664(%rbp), %r10
	movq     %r10, -6000656(%rbp)
	movl     $0, -6000648(%rbp)  /* mov_l    vr31, $0 */
	movl     -6000648(%rbp), %r10d /* sconv_lq vr32, vr31 */
	movslq   %r10d, %r10
	movq     %r10, -6000640(%rbp)
	movq     -6000640(%rbp), %r10 /* mul_q    vr33, vr32, $8 */
	imulq    $8, %r10
	movq     %r10, -6000632(%rbp)
	movq     -6000656(%rbp), %r10 /* add_q    vr34, vr30, vr33 */
	addq     -6000632(%rbp), %r10
	movq     %r10, -6000624(%rbp)
	movq     -6000624(%rbp), %rdi /* mov_q    vr1, vr34 */
	call     read_m500x500       /* call     read_m500x500 */
	movl     $0, -6000616(%rbp)  /* mov_l    vr35, $0 */
	movl     -6000616(%rbp), %r10d /* mov_l    vr11, vr35 */
	movl     %r10d, -6000808(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	movl     $0, -6000608(%rbp)  /* mov_l    vr36, $0 */
	movl     -6000608(%rbp), %r10d /* mov_l    vr12, vr36 */
	movl     %r10d, -6000800(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movq     $0, -6000600(%rbp)  /* mov_q    vr37, $0 */
	leaq     -2000000(%rbp), %r10 /* localaddr vr38, $4000000 */
	movq     %r10, -6000592(%rbp)
	movl     -6000808(%rbp), %r10d /* sconv_lq vr39, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -6000584(%rbp)
	movq     -6000584(%rbp), %r10 /* mul_q    vr40, vr39, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000576(%rbp)
	movq     -6000592(%rbp), %r10 /* add_q    vr41, vr38, vr40 */
	addq     -6000576(%rbp), %r10
	movq     %r10, -6000568(%rbp)
	movl     -6000800(%rbp), %r10d /* sconv_lq vr42, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -6000560(%rbp)
	movq     -6000560(%rbp), %r10 /* mul_q    vr43, vr42, $8 */
	imulq    $8, %r10
	movq     %r10, -6000552(%rbp)
	movq     -6000568(%rbp), %r10 /* add_q    vr44, vr41, vr43 */
	addq     -6000552(%rbp), %r10
	movq     %r10, -6000544(%rbp)
	movq     -6000544(%rbp), %r11 /* mov_q    (vr44), vr37 */
	movq     -6000600(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000536(%rbp)  /* mov_l    vr45, $1 */
	movl     -6000800(%rbp), %r10d /* add_l    vr46, vr12, vr45 */
	addl     -6000536(%rbp), %r10d
	movl     %r10d, -6000528(%rbp)
	movl     -6000528(%rbp), %r10d /* mov_l    vr12, vr46 */
	movl     %r10d, -6000800(%rbp)
.L5:
	movl     -6000800(%rbp), %r10d /* cmplt_l  vr47, vr12, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000520(%rbp)
	cmpl     $0, -6000520(%rbp)  /* cjmp_t   vr47, .L4 */
	jne      .L4
	movl     $1, -6000512(%rbp)  /* mov_l    vr48, $1 */
	movl     -6000808(%rbp), %r10d /* add_l    vr49, vr11, vr48 */
	addl     -6000512(%rbp), %r10d
	movl     %r10d, -6000504(%rbp)
	movl     -6000504(%rbp), %r10d /* mov_l    vr11, vr49 */
	movl     %r10d, -6000808(%rbp)
.L3:
	movl     -6000808(%rbp), %r10d /* cmplt_l  vr50, vr11, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000496(%rbp)
	cmpl     $0, -6000496(%rbp)  /* cjmp_t   vr50, .L2 */
	jne      .L2
	movl     $0, -6000488(%rbp)  /* mov_l    vr51, $0 */
	movl     -6000488(%rbp), %r10d /* mov_l    vr13, vr51 */
	movl     %r10d, -6000792(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	movl     $0, -6000480(%rbp)  /* mov_l    vr52, $0 */
	movl     -6000480(%rbp), %r10d /* mov_l    vr11, vr52 */
	movl     %r10d, -6000808(%rbp)
	jmp      .L9                 /* jmp      .L9 */
.L8:
	leaq     -6000000(%rbp), %r10 /* localaddr vr53, $0 */
	movq     %r10, -6000472(%rbp)
	movl     -6000808(%rbp), %r10d /* sconv_lq vr54, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -6000464(%rbp)
	movq     -6000464(%rbp), %r10 /* mul_q    vr55, vr54, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000456(%rbp)
	movq     -6000472(%rbp), %r10 /* add_q    vr56, vr53, vr55 */
	addq     -6000456(%rbp), %r10
	movq     %r10, -6000448(%rbp)
	movl     -6000792(%rbp), %r10d /* sconv_lq vr57, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000440(%rbp)
	movq     -6000440(%rbp), %r10 /* mul_q    vr58, vr57, $8 */
	imulq    $8, %r10
	movq     %r10, -6000432(%rbp)
	movq     -6000448(%rbp), %r10 /* add_q    vr59, vr56, vr58 */
	addq     -6000432(%rbp), %r10
	movq     %r10, -6000424(%rbp)
	movq     -6000424(%rbp), %r11 /* mov_q    vr60, (vr59) */
	movq     (%r11), %r10
	movq     %r10, -6000416(%rbp)
	movq     -6000416(%rbp), %r10 /* mov_q    vr14, vr60 */
	movq     %r10, -6000784(%rbp)
	movl     $0, -6000408(%rbp)  /* mov_l    vr61, $0 */
	movl     -6000408(%rbp), %r10d /* mov_l    vr12, vr61 */
	movl     %r10d, -6000800(%rbp)
	jmp      .L11                /* jmp      .L11 */
.L10:
	leaq     -2000000(%rbp), %r10 /* localaddr vr62, $4000000 */
	movq     %r10, -6000400(%rbp)
	movl     -6000808(%rbp), %r10d /* sconv_lq vr63, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -6000392(%rbp)
	movq     -6000392(%rbp), %r10 /* mul_q    vr64, vr63, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000384(%rbp)
	movq     -6000400(%rbp), %r10 /* add_q    vr65, vr62, vr64 */
	addq     -6000384(%rbp), %r10
	movq     %r10, -6000376(%rbp)
	movl     -6000800(%rbp), %r10d /* sconv_lq vr66, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -6000368(%rbp)
	movq     -6000368(%rbp), %r10 /* mul_q    vr67, vr66, $8 */
	imulq    $8, %r10
	movq     %r10, -6000360(%rbp)
	movq     -6000376(%rbp), %r10 /* add_q    vr68, vr65, vr67 */
	addq     -6000360(%rbp), %r10
	movq     %r10, -6000352(%rbp)
	movq     -6000352(%rbp), %r11 /* mov_q    vr69, (vr68) */
	movq     (%r11), %r10
	movq     %r10, -6000344(%rbp)
	movq     -6000344(%rbp), %r10 /* mov_q    vr15, vr69 */
	movq     %r10, -6000776(%rbp)
	leaq     -4000000(%rbp), %r10 /* localaddr vr70, $2000000 */
	movq     %r10, -6000336(%rbp)
	movl     -6000792(%rbp), %r10d /* sconv_lq vr71, vr13 */
	movslq   %r10d, %r10
	movq     %r10, -6000328(%rbp)
	movq     -6000328(%rbp), %r10 /* mul_q    vr72, vr71, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000320(%rbp)
	movq     -6000336(%rbp), %r10 /* add_q    vr73, vr70, vr72 */
	addq     -6000320(%rbp), %r10
	movq     %r10, -6000312(%rbp)
	movl     -6000800(%rbp), %r10d /* sconv_lq vr74, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -6000304(%rbp)
	movq     -6000304(%rbp), %r10 /* mul_q    vr75, vr74, $8 */
	imulq    $8, %r10
	movq     %r10, -6000296(%rbp)
	movq     -6000312(%rbp), %r10 /* add_q    vr76, vr73, vr75 */
	addq     -6000296(%rbp), %r10
	movq     %r10, -6000288(%rbp)
	movq     -6000288(%rbp), %r11 /* mov_q    vr78, (vr76) */
	movq     (%r11), %r10
	movq     %r10, -6000272(%rbp)
	movq     -6000784(%rbp), %r10 /* mul_q    vr77, vr14, vr78 */
	imulq    -6000272(%rbp), %r10
	movq     %r10, -6000280(%rbp)
	movq     -6000776(%rbp), %r10 /* add_q    vr79, vr15, vr77 */
	addq     -6000280(%rbp), %r10
	movq     %r10, -6000264(%rbp)
	movq     -6000264(%rbp), %r10 /* mov_q    vr15, vr79 */
	movq     %r10, -6000776(%rbp)
	leaq     -2000000(%rbp), %r10 /* localaddr vr80, $4000000 */
	movq     %r10, -6000256(%rbp)
	movl     -6000808(%rbp), %r10d /* sconv_lq vr81, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -6000248(%rbp)
	movq     -6000248(%rbp), %r10 /* mul_q    vr82, vr81, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000240(%rbp)
	movq     -6000256(%rbp), %r10 /* add_q    vr83, vr80, vr82 */
	addq     -6000240(%rbp), %r10
	movq     %r10, -6000232(%rbp)
	movl     -6000800(%rbp), %r10d /* sconv_lq vr84, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -6000224(%rbp)
	movq     -6000224(%rbp), %r10 /* mul_q    vr85, vr84, $8 */
	imulq    $8, %r10
	movq     %r10, -6000216(%rbp)
	movq     -6000232(%rbp), %r10 /* add_q    vr86, vr83, vr85 */
	addq     -6000216(%rbp), %r10
	movq     %r10, -6000208(%rbp)
	movq     -6000208(%rbp), %r11 /* mov_q    (vr86), vr15 */
	movq     -6000776(%rbp), %r10
	movq     %r10, (%r11)
	movl     $1, -6000200(%rbp)  /* mov_l    vr87, $1 */
	movl     -6000800(%rbp), %r10d /* add_l    vr88, vr12, vr87 */
	addl     -6000200(%rbp), %r10d
	movl     %r10d, -6000192(%rbp)
	movl     -6000192(%rbp), %r10d /* mov_l    vr12, vr88 */
	movl     %r10d, -6000800(%rbp)
.L11:
	movl     -6000800(%rbp), %r10d /* cmplt_l  vr89, vr12, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000184(%rbp)
	cmpl     $0, -6000184(%rbp)  /* cjmp_t   vr89, .L10 */
	jne      .L10
	movl     $1, -6000176(%rbp)  /* mov_l    vr90, $1 */
	movl     -6000808(%rbp), %r10d /* add_l    vr91, vr11, vr90 */
	addl     -6000176(%rbp), %r10d
	movl     %r10d, -6000168(%rbp)
	movl     -6000168(%rbp), %r10d /* mov_l    vr11, vr91 */
	movl     %r10d, -6000808(%rbp)
.L9:
	movl     -6000808(%rbp), %r10d /* cmplt_l  vr92, vr11, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000160(%rbp)
	cmpl     $0, -6000160(%rbp)  /* cjmp_t   vr92, .L8 */
	jne      .L8
	movl     $1, -6000152(%rbp)  /* mov_l    vr93, $1 */
	movl     -6000792(%rbp), %r10d /* add_l    vr94, vr13, vr93 */
	addl     -6000152(%rbp), %r10d
	movl     %r10d, -6000144(%rbp)
	movl     -6000144(%rbp), %r10d /* mov_l    vr13, vr94 */
	movl     %r10d, -6000792(%rbp)
.L7:
	movl     -6000792(%rbp), %r10d /* cmplt_l  vr95, vr13, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000136(%rbp)
	cmpl     $0, -6000136(%rbp)  /* cjmp_t   vr95, .L6 */
	jne      .L6
	movl     $0, -6000128(%rbp)  /* mov_l    vr96, $0 */
	movl     -6000128(%rbp), %r10d /* mov_l    vr11, vr96 */
	movl     %r10d, -6000808(%rbp)
	jmp      .L13                /* jmp      .L13 */
.L12:
	movl     $0, -6000120(%rbp)  /* mov_l    vr97, $0 */
	movl     -6000120(%rbp), %r10d /* mov_l    vr12, vr97 */
	movl     %r10d, -6000800(%rbp)
	jmp      .L15                /* jmp      .L15 */
.L14:
	leaq     -2000000(%rbp), %r10 /* localaddr vr98, $4000000 */
	movq     %r10, -6000112(%rbp)
	movl     -6000808(%rbp), %r10d /* sconv_lq vr99, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -6000104(%rbp)
	movq     -6000104(%rbp), %r10 /* mul_q    vr100, vr99, $4000 */
	imulq    $4000, %r10
	movq     %r10, -6000096(%rbp)
	movq     -6000112(%rbp), %r10 /* add_q    vr101, vr98, vr100 */
	addq     -6000096(%rbp), %r10
	movq     %r10, -6000088(%rbp)
	movl     -6000800(%rbp), %r10d /* sconv_lq vr102, vr12 */
	movslq   %r10d, %r10
	movq     %r10, -6000080(%rbp)
	movq     -6000080(%rbp), %r10 /* mul_q    vr103, vr102, $8 */
	imulq    $8, %r10
	movq     %r10, -6000072(%rbp)
	movq     -6000088(%rbp), %r10 /* add_q    vr104, vr101, vr103 */
	addq     -6000072(%rbp), %r10
	movq     %r10, -6000064(%rbp)
	movq     -6000064(%rbp), %r11 /* mov_q    vr1, (vr104) */
	movq     (%r11), %rdi
	call     print_i64           /* call     print_i64 */
	call     print_nl            /* call     print_nl */
	movl     $1, -6000056(%rbp)  /* mov_l    vr105, $1 */
	movl     -6000800(%rbp), %r10d /* add_l    vr106, vr12, vr105 */
	addl     -6000056(%rbp), %r10d
	movl     %r10d, -6000048(%rbp)
	movl     -6000048(%rbp), %r10d /* mov_l    vr12, vr106 */
	movl     %r10d, -6000800(%rbp)
.L15:
	movl     -6000800(%rbp), %r10d /* cmplt_l  vr107, vr12, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000040(%rbp)
	cmpl     $0, -6000040(%rbp)  /* cjmp_t   vr107, .L14 */
	jne      .L14
	movl     $1, -6000032(%rbp)  /* mov_l    vr108, $1 */
	movl     -6000808(%rbp), %r10d /* add_l    vr109, vr11, vr108 */
	addl     -6000032(%rbp), %r10d
	movl     %r10d, -6000024(%rbp)
	movl     -6000024(%rbp), %r10d /* mov_l    vr11, vr109 */
	movl     %r10d, -6000808(%rbp)
.L13:
	movl     -6000808(%rbp), %r10d /* cmplt_l  vr110, vr11, vr10 */
	cmpl     -6000816(%rbp), %r10d
	setl     %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -6000016(%rbp)
	cmpl     $0, -6000016(%rbp)  /* cjmp_t   vr110, .L12 */
	jne      .L12
	movl     $0, -6000008(%rbp)  /* mov_l    vr111, $0 */
	movl     -6000008(%rbp), %eax /* mov_l    vr0, vr111 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $6000816, %rsp      /* leave    $6000000 */
	popq     %rbp
	ret                          /* ret       */
