
/* Allocating storage for function 'main' */
/* variable 'i' allocated vreg 10 */
/* variable 'j' allocated vreg 11 */
/* variable 'n' allocated vreg 12 */
/* variable 'm' allocated 400 bytes of storage at offset 0 */
/* Function 'main' uses 400 bytes of memory and 13 virtual registers */
/* Function 'main': placing memory variables at offset -400 from %rbp */
/* Function 'main' uses 320 total bytes of memory storage for vregs */
/* Function 'main': placing vreg storage at offset -720 from %rbp */
/* Function 'main': 720 bytes of local storage allocated in stack frame */

	.section .text

	.globl main
main:
	pushq    %rbp                /* enter    $400 */
	movq     %rsp, %rbp
	subq     $720, %rsp
	movl     $0, -696(%rbp)      /* mov_l    vr13, $0 */
	movl     -696(%rbp), %r10d   /* mov_l    vr10, vr13 */
	movl     %r10d, -720(%rbp)
	jmp      .L1                 /* jmp      .L1 */
.L0:
	movl     $0, -688(%rbp)      /* mov_l    vr14, $0 */
	movl     -688(%rbp), %r10d   /* mov_l    vr12, vr14 */
	movl     %r10d, -704(%rbp)
	movl     $0, -680(%rbp)      /* mov_l    vr15, $0 */
	movl     -680(%rbp), %r10d   /* mov_l    vr11, vr15 */
	movl     %r10d, -712(%rbp)
	jmp      .L3                 /* jmp      .L3 */
.L2:
	leaq     -400(%rbp), %r10    /* localaddr vr16, $0 */
	movq     %r10, -672(%rbp)
	movl     -720(%rbp), %r10d   /* sconv_lq vr17, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -664(%rbp)
	movq     -664(%rbp), %r10    /* mul_q    vr18, vr17, $40 */
	imulq    $40, %r10
	movq     %r10, -656(%rbp)
	movq     -672(%rbp), %r10    /* add_q    vr19, vr16, vr18 */
	addq     -656(%rbp), %r10
	movq     %r10, -648(%rbp)
	movl     -712(%rbp), %r10d   /* sconv_lq vr20, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -640(%rbp)
	movq     -640(%rbp), %r10    /* mul_q    vr21, vr20, $4 */
	imulq    $4, %r10
	movq     %r10, -632(%rbp)
	movq     -648(%rbp), %r10    /* add_q    vr22, vr19, vr21 */
	addq     -632(%rbp), %r10
	movq     %r10, -624(%rbp)
	movq     -624(%rbp), %r11    /* mov_l    (vr22), vr12 */
	movl     -704(%rbp), %r10d
	movl     %r10d, (%r11)
	movl     -704(%rbp), %r10d   /* add_l    vr23, vr12, vr10 */
	addl     -720(%rbp), %r10d
	movl     %r10d, -616(%rbp)
	movl     -616(%rbp), %r10d   /* mov_l    vr12, vr23 */
	movl     %r10d, -704(%rbp)
	movl     $1, -608(%rbp)      /* mov_l    vr24, $1 */
	movl     -712(%rbp), %r10d   /* add_l    vr25, vr11, vr24 */
	addl     -608(%rbp), %r10d
	movl     %r10d, -600(%rbp)
	movl     -600(%rbp), %r10d   /* mov_l    vr11, vr25 */
	movl     %r10d, -712(%rbp)
.L3:
	movl     $9, -592(%rbp)      /* mov_l    vr26, $9 */
	movl     -712(%rbp), %r10d   /* cmplte_l vr27, vr11, vr26 */
	cmpl     -592(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -584(%rbp)
	cmpl     $0, -584(%rbp)      /* cjmp_t   vr27, .L2 */
	jne      .L2
	movl     $1, -576(%rbp)      /* mov_l    vr28, $1 */
	movl     -720(%rbp), %r10d   /* add_l    vr29, vr10, vr28 */
	addl     -576(%rbp), %r10d
	movl     %r10d, -568(%rbp)
	movl     -568(%rbp), %r10d   /* mov_l    vr10, vr29 */
	movl     %r10d, -720(%rbp)
.L1:
	movl     $9, -560(%rbp)      /* mov_l    vr30, $9 */
	movl     -720(%rbp), %r10d   /* cmplte_l vr31, vr10, vr30 */
	cmpl     -560(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -552(%rbp)
	cmpl     $0, -552(%rbp)      /* cjmp_t   vr31, .L0 */
	jne      .L0
	movl     $0, -544(%rbp)      /* mov_l    vr32, $0 */
	movl     -544(%rbp), %r10d   /* mov_l    vr10, vr32 */
	movl     %r10d, -720(%rbp)
	jmp      .L5                 /* jmp      .L5 */
.L4:
	movl     $0, -536(%rbp)      /* mov_l    vr33, $0 */
	movl     -536(%rbp), %r10d   /* mov_l    vr11, vr33 */
	movl     %r10d, -712(%rbp)
	jmp      .L7                 /* jmp      .L7 */
.L6:
	leaq     -400(%rbp), %r10    /* localaddr vr34, $0 */
	movq     %r10, -528(%rbp)
	movl     -720(%rbp), %r10d   /* sconv_lq vr35, vr10 */
	movslq   %r10d, %r10
	movq     %r10, -520(%rbp)
	movq     -520(%rbp), %r10    /* mul_q    vr36, vr35, $40 */
	imulq    $40, %r10
	movq     %r10, -512(%rbp)
	movq     -528(%rbp), %r10    /* add_q    vr37, vr34, vr36 */
	addq     -512(%rbp), %r10
	movq     %r10, -504(%rbp)
	movl     -712(%rbp), %r10d   /* sconv_lq vr38, vr11 */
	movslq   %r10d, %r10
	movq     %r10, -496(%rbp)
	movq     -496(%rbp), %r10    /* mul_q    vr39, vr38, $4 */
	imulq    $4, %r10
	movq     %r10, -488(%rbp)
	movq     -504(%rbp), %r10    /* add_q    vr40, vr37, vr39 */
	addq     -488(%rbp), %r10
	movq     %r10, -480(%rbp)
	movq     -480(%rbp), %r11    /* mov_l    vr1, (vr40) */
	movl     (%r11), %edi
	call     print_i32           /* call     print_i32 */
	call     print_space         /* call     print_space */
	movl     $1, -472(%rbp)      /* mov_l    vr41, $1 */
	movl     -712(%rbp), %r10d   /* add_l    vr42, vr11, vr41 */
	addl     -472(%rbp), %r10d
	movl     %r10d, -464(%rbp)
	movl     -464(%rbp), %r10d   /* mov_l    vr11, vr42 */
	movl     %r10d, -712(%rbp)
.L7:
	movl     $9, -456(%rbp)      /* mov_l    vr43, $9 */
	movl     -712(%rbp), %r10d   /* cmplte_l vr44, vr11, vr43 */
	cmpl     -456(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -448(%rbp)
	cmpl     $0, -448(%rbp)      /* cjmp_t   vr44, .L6 */
	jne      .L6
	call     print_nl            /* call     print_nl */
	movl     $1, -440(%rbp)      /* mov_l    vr45, $1 */
	movl     -720(%rbp), %r10d   /* add_l    vr46, vr10, vr45 */
	addl     -440(%rbp), %r10d
	movl     %r10d, -432(%rbp)
	movl     -432(%rbp), %r10d   /* mov_l    vr10, vr46 */
	movl     %r10d, -720(%rbp)
.L5:
	movl     $9, -424(%rbp)      /* mov_l    vr47, $9 */
	movl     -720(%rbp), %r10d   /* cmplte_l vr48, vr10, vr47 */
	cmpl     -424(%rbp), %r10d
	setle    %r10b
	movzbl   %r10b, %r11d
	movl     %r11d, -416(%rbp)
	cmpl     $0, -416(%rbp)      /* cjmp_t   vr48, .L4 */
	jne      .L4
	movl     $0, -408(%rbp)      /* mov_l    vr49, $0 */
	movl     -408(%rbp), %eax    /* mov_l    vr0, vr49 */
	jmp      .Lmain_return       /* jmp      .Lmain_return */
.Lmain_return:
	addq     $720, %rsp          /* leave    $400 */
	popq     %rbp
	ret                          /* ret       */
