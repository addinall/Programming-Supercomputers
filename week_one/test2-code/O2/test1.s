# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-O2 -S";
	.file "test1.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
..___tag_value_main.1:                                          #29.33
..L2:
                                                          #29.33
        pushq     %rbp                                          #29.33
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #29.33
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #29.33
        subq      $32000128, %rsp                               #29.33
        xorl      %esi, %esi                                    #29.33
        movl      $3, %edi                                      #29.33
        call      __intel_new_feature_proc_init                 #29.33
                                # LOE rbx r12 r13 r14 r15
..B1.27:                        # Preds ..B1.1
        stmxcsr   (%rsp)                                        #29.33
        movl      $il0_peep_printf_format_0, %edi               #34.5
        orl       $32832, (%rsp)                                #29.33
        ldmxcsr   (%rsp)                                        #29.33
        call      puts                                          #34.5
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.27
        movl      $2, %eax                                      #37.5
        movq      $0x100000000, %rdx                            #37.5
        movd      %eax, %xmm0                                   #37.5
        xorl      %eax, %eax                                    #36.5
        pshufd    $0, %xmm0, %xmm1                              #37.5
        movd      %rdx, %xmm0                                   #37.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.3:                         # Preds ..B1.3 ..B1.2
        cvtdq2pd  %xmm0, %xmm2                                  #37.22
        movntpd   %xmm2, 24000016(%rsp,%rax,8)                  #37.5
        addq      $2, %rax                                      #36.5
        paddd     %xmm1, %xmm0                                  #37.5
        cmpq      $1000000, %rax                                #36.5
        jb        ..B1.3        # Prob 99%                      #36.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.4:                         # Preds ..B1.3
        mfence                                                  #36.5
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        movl      $4, %eax                                      #41.29
        movq      $0x200000000, %rdx                            #41.29
        movd      %eax, %xmm0                                   #41.29
        xorl      %eax, %eax                                    #40.5
        pshufd    $0, %xmm0, %xmm1                              #41.29
        movd      %rdx, %xmm0                                   #41.29
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.6:                         # Preds ..B1.6 ..B1.5
        cvtdq2pd  %xmm0, %xmm2                                  #41.29
        movntpd   %xmm2, 16000016(%rsp,%rax,8)                  #41.9
        addq      $2, %rax                                      #40.5
        paddd     %xmm1, %xmm0                                  #41.29
        cmpq      $1000000, %rax                                #40.5
        jb        ..B1.6        # Prob 99%                      #40.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.7:                         # Preds ..B1.6
        mfence                                                  #40.5
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        movaps    .L_2il0floatpacket.0(%rip), %xmm0             #45.17
        xorl      %eax, %eax                                    #44.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.9:                         # Preds ..B1.9 ..B1.8
        movntpd   %xmm0, 8000016(%rsp,%rax,8)                   #45.9
        addq      $2, %rax                                      #44.5
        cmpq      $1000000, %rax                                #44.5
        jb        ..B1.9        # Prob 99%                      #44.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.10:                        # Preds ..B1.9
        mfence                                                  #44.5
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
        xorl      %eax, %eax                                    #48.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.12 ..B1.11
        movaps    24000016(%rsp,%rax,8), %xmm0                  #49.17
        addpd     16000016(%rsp,%rax,8), %xmm0                  #49.25
        movntpd   %xmm0, 8000016(%rsp,%rax,8)                   #49.9
        addq      $2, %rax                                      #48.5
        cmpq      $1000000, %rax                                #48.5
        jb        ..B1.12       # Prob 99%                      #48.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
        mfence                                                  #48.5
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
        movsd     8000032(%rsp), %xmm0                          #52.5
        movl      $.L_2__STRING.1, %edi                         #52.5
        movl      $1, %eax                                      #52.5
..___tag_value_main.6:                                          #52.5
        call      printf                                        #52.5
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
        movaps    .L_2il0floatpacket.1(%rip), %xmm0             #54.37
        xorl      %eax, %eax                                    #53.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.16:                        # Preds ..B1.16 ..B1.15
        movaps    24000016(%rsp,%rax,8), %xmm1                  #54.31
        mulpd     %xmm0, %xmm1                                  #54.37
        addpd     16000016(%rsp,%rax,8), %xmm1                  #54.17
        movntpd   %xmm1, 16(%rsp,%rax,8)                        #54.9
        addq      $2, %rax                                      #53.5
        cmpq      $1000000, %rax                                #53.5
        jb        ..B1.16       # Prob 99%                      #53.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.17:                        # Preds ..B1.16
        mfence                                                  #53.5
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.17
        xorl      %eax, %eax                                    #59.5
        pxor      %xmm1, %xmm1                                  #60.9
        movaps    %xmm1, %xmm8                                  #60.9
        movaps    %xmm1, %xmm7                                  #60.9
        movaps    %xmm1, %xmm6                                  #60.9
        movaps    %xmm1, %xmm5                                  #60.9
        movaps    %xmm1, %xmm4                                  #60.9
        movaps    %xmm1, %xmm3                                  #60.9
        movaps    %xmm1, %xmm2                                  #60.9
        movaps    %xmm1, %xmm0                                  #60.9
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.19:                        # Preds ..B1.19 ..B1.18
        addpd     8000016(%rsp,%rax,8), %xmm8                   #60.9
        addpd     8000032(%rsp,%rax,8), %xmm7                   #60.9
        addpd     8000048(%rsp,%rax,8), %xmm6                   #60.9
        addpd     8000064(%rsp,%rax,8), %xmm5                   #60.9
        addpd     8000080(%rsp,%rax,8), %xmm4                   #60.9
        addpd     8000096(%rsp,%rax,8), %xmm3                   #60.9
        addpd     8000112(%rsp,%rax,8), %xmm2                   #60.9
        addpd     8000128(%rsp,%rax,8), %xmm0                   #60.9
        addq      $16, %rax                                     #59.5
        cmpq      $1000000, %rax                                #59.5
        jb        ..B1.19       # Prob 99%                      #59.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.20:                        # Preds ..B1.19
        addpd     %xmm7, %xmm8                                  #60.9
        addpd     %xmm5, %xmm6                                  #60.9
        addpd     %xmm3, %xmm4                                  #60.9
        addpd     %xmm0, %xmm2                                  #60.9
        addpd     %xmm6, %xmm8                                  #60.9
        addpd     %xmm2, %xmm4                                  #60.9
        addpd     %xmm4, %xmm8                                  #60.9
        movaps    %xmm8, %xmm2                                  #60.9
        movl      $.L_2__STRING.2, %edi                         #63.5
        unpckhpd  %xmm8, %xmm2                                  #60.9
        movl      $1, %eax                                      #63.5
        movaps    %xmm1, (%rsp)                                 #63.5
        addsd     %xmm2, %xmm8                                  #60.9
        movaps    %xmm8, %xmm0                                  #63.5
..___tag_value_main.8:                                          #63.5
        call      printf                                        #63.5
..___tag_value_main.9:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
        movaps    (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #67.5
        pxor      %xmm7, %xmm7                                  #31.5
        movaps    %xmm1, %xmm6                                  #31.5
        movaps    %xmm1, %xmm5                                  #31.5
        movaps    %xmm1, %xmm4                                  #31.5
        movaps    %xmm1, %xmm3                                  #31.5
        movaps    %xmm1, %xmm2                                  #31.5
        movaps    %xmm1, %xmm0                                  #31.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.22:                        # Preds ..B1.22 ..B1.21
        addpd     16(%rsp,%rax,8), %xmm1                        #68.9
        addpd     32(%rsp,%rax,8), %xmm7                        #68.9
        addpd     48(%rsp,%rax,8), %xmm6                        #68.9
        addpd     64(%rsp,%rax,8), %xmm5                        #68.9
        addpd     80(%rsp,%rax,8), %xmm4                        #68.9
        addpd     96(%rsp,%rax,8), %xmm3                        #68.9
        addpd     112(%rsp,%rax,8), %xmm2                       #68.9
        addpd     128(%rsp,%rax,8), %xmm0                       #68.9
        addq      $16, %rax                                     #67.5
        cmpq      $1000000, %rax                                #67.5
        jb        ..B1.22       # Prob 99%                      #67.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.23:                        # Preds ..B1.22
        addpd     %xmm7, %xmm1                                  #31.5
        addpd     %xmm5, %xmm6                                  #31.5
        addpd     %xmm3, %xmm4                                  #31.5
        addpd     %xmm0, %xmm2                                  #31.5
        addpd     %xmm6, %xmm1                                  #31.5
        addpd     %xmm2, %xmm4                                  #31.5
        addpd     %xmm4, %xmm1                                  #31.5
        movaps    %xmm1, %xmm0                                  #31.5
        movl      $.L_2__STRING.3, %edi                         #71.5
        unpckhpd  %xmm1, %xmm0                                  #31.5
        movl      $1, %eax                                      #71.5
        addsd     %xmm0, %xmm1                                  #31.5
        movaps    %xmm1, %xmm0                                  #71.5
..___tag_value_main.10:                                         #71.5
        call      printf                                        #71.5
..___tag_value_main.11:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
        xorl      %eax, %eax                                    #73.12
        movq      %rbp, %rsp                                    #73.12
        popq      %rbp                                          #73.12
..___tag_value_main.12:                                         #
        ret                                                     #73.12
        .align    16,0x90
..___tag_value_main.14:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_0:
	.long	1819043144
	.long	1867980911
	.long	560229490
	.byte	0
	.data
# -- End  main
	.text
# -- Begin  add_internal
	.text
# mark_begin;
       .align    16,0x90
	.globl add_internal
add_internal:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B2.1:                         # Preds ..B2.0
..___tag_value_add_internal.15:                                 #24.41
..L16:
                                                         #24.41
        addsd     %xmm1, %xmm0                                  #25.16
        ret                                                     #25.16
        .align    16,0x90
..___tag_value_add_internal.17:                                 #
                                # LOE
# mark_end;
	.type	add_internal,@function
	.size	add_internal,.-add_internal
	.data
# -- End  add_internal
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,16
	.align 16
.L_2il0floatpacket.1:
	.long	0x00000000,0x40000000,0x00000000,0x40000000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,16
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1025532771
	.long	174466336
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	544044403
	.long	1025532771
	.long	174466336
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,13
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	544044403
	.long	1025533028
	.long	174466336
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,13
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000034
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.14-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.12-..___tag_value_main.4
	.8byte 0x00000000c608070c
	.2byte 0x0000
	.4byte 0x00000014
	.4byte 0x00000054
	.8byte ..___tag_value_add_internal.15
	.8byte ..___tag_value_add_internal.17-..___tag_value_add_internal.15
# End
