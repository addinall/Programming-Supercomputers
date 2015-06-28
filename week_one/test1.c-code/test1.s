# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-S";
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
..___tag_value_main.1:                                          #31.33
..L2:
                                                          #31.33
        pushq     %rbp                                          #31.33
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #31.33
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #31.33
        pushq     %r12                                          #31.33
        subq      $40000120, %rsp                               #31.33
        xorl      %esi, %esi                                    #31.33
        movl      $3, %edi                                      #31.33
        call      __intel_new_feature_proc_init                 #31.33
..___tag_value_main.6:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.1
        stmxcsr   (%rsp)                                        #31.33
        movl      $il0_peep_printf_format_0, %edi               #36.5
        orl       $32832, (%rsp)                                #31.33
        ldmxcsr   (%rsp)                                        #31.33
        call      puts                                          #36.5
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.33
        movl      $2, %eax                                      #39.9
        movq      $0x100000000, %rdx                            #39.9
        movd      %eax, %xmm0                                   #39.9
        xorl      %eax, %eax                                    #38.5
        pshufd    $0, %xmm0, %xmm1                              #39.9
        movd      %rdx, %xmm0                                   #39.9
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.3:                         # Preds ..B1.3 ..B1.2
        cvtdq2pd  %xmm0, %xmm2                                  #39.26
        movntpd   %xmm2, 32000016(%rsp,%rax,8)                  #39.9
        addq      $2, %rax                                      #38.5
        paddd     %xmm1, %xmm0                                  #39.9
        cmpq      $1000000, %rax                                #38.5
        jb        ..B1.3        # Prob 99%                      #38.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.4:                         # Preds ..B1.3
        mfence                                                  #38.5
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        movl      $4, %eax                                      #43.29
        movq      $0x200000000, %rdx                            #43.29
        movd      %eax, %xmm0                                   #43.29
        xorl      %eax, %eax                                    #42.5
        pshufd    $0, %xmm0, %xmm1                              #43.29
        movd      %rdx, %xmm0                                   #43.29
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.6:                         # Preds ..B1.6 ..B1.5
        cvtdq2pd  %xmm0, %xmm2                                  #43.29
        movntpd   %xmm2, 24000016(%rsp,%rax,8)                  #43.9
        addq      $2, %rax                                      #42.5
        paddd     %xmm1, %xmm0                                  #43.29
        cmpq      $1000000, %rax                                #42.5
        jb        ..B1.6        # Prob 99%                      #42.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.7:                         # Preds ..B1.6
        mfence                                                  #42.5
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        movaps    .L_2il0floatpacket.0(%rip), %xmm0             #47.17
        xorl      %eax, %eax                                    #46.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.9:                         # Preds ..B1.9 ..B1.8
        movntpd   %xmm0, 16000016(%rsp,%rax,8)                  #47.9
        addq      $2, %rax                                      #46.5
        cmpq      $1000000, %rax                                #46.5
        jb        ..B1.9        # Prob 99%                      #46.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.10:                        # Preds ..B1.9
        mfence                                                  #46.5
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
        xorl      %eax, %eax                                    #50.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.12 ..B1.11
        movaps    32000016(%rsp,%rax,8), %xmm0                  #51.17
        addpd     24000016(%rsp,%rax,8), %xmm0                  #51.25
        movntpd   %xmm0, 16000016(%rsp,%rax,8)                  #51.9
        addq      $2, %rax                                      #50.5
        cmpq      $1000000, %rax                                #50.5
        jb        ..B1.12       # Prob 99%                      #50.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
        mfence                                                  #50.5
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
        movsd     16000032(%rsp), %xmm0                         #54.5
        movl      $.L_2__STRING.1, %edi                         #54.5
        movl      $1, %eax                                      #54.5
..___tag_value_main.7:                                          #54.5
        call      printf                                        #54.5
..___tag_value_main.8:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
        movaps    .L_2il0floatpacket.1(%rip), %xmm0             #57.37
        xorl      %eax, %eax                                    #56.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.16:                        # Preds ..B1.16 ..B1.15
        movaps    32000016(%rsp,%rax,8), %xmm1                  #57.31
        mulpd     %xmm0, %xmm1                                  #57.37
        addpd     24000016(%rsp,%rax,8), %xmm1                  #57.17
        movntpd   %xmm1, 8000016(%rsp,%rax,8)                   #57.9
        addq      $2, %rax                                      #56.5
        cmpq      $1000000, %rax                                #56.5
        jb        ..B1.16       # Prob 99%                      #56.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.17:                        # Preds ..B1.16
        mfence                                                  #56.5
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.17
        xorl      %eax, %eax                                    #60.10
        movq      %rax, %r12                                    #61.47
                                # LOE rbx r12 r13 r14 r15
..B1.19:                        # Preds ..B1.20 ..B1.18
        movsd     24000016(%rsp,%r12,8), %xmm1                  #61.17
        divsd     .L_2il0floatpacket.3(%rip), %xmm1             #61.17
        movsd     32000016(%rsp,%r12,8), %xmm0                  #61.17
        mulsd     .L_2il0floatpacket.2(%rip), %xmm0             #61.17
..___tag_value_main.9:                                          #61.17
        call      add_external                                  #61.17
..___tag_value_main.10:                                         #
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.20:                        # Preds ..B1.19
        movsd     %xmm0, 16(%rsp,%r12,8)                        #61.9
        incq      %r12                                          #60.20
        cmpq      $1000000, %r12                                #60.17
        jl        ..B1.19       # Prob 99%                      #60.17
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
        xorl      %eax, %eax                                    #66.5
        pxor      %xmm1, %xmm1                                  #67.9
        movaps    %xmm1, %xmm8                                  #67.9
        movaps    %xmm1, %xmm7                                  #67.9
        movaps    %xmm1, %xmm6                                  #67.9
        movaps    %xmm1, %xmm5                                  #67.9
        movaps    %xmm1, %xmm4                                  #67.9
        movaps    %xmm1, %xmm3                                  #67.9
        movaps    %xmm1, %xmm2                                  #67.9
        movaps    %xmm1, %xmm0                                  #67.9
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.22:                        # Preds ..B1.22 ..B1.21
        addpd     16000016(%rsp,%rax,8), %xmm8                  #67.9
        addpd     16000032(%rsp,%rax,8), %xmm7                  #67.9
        addpd     16000048(%rsp,%rax,8), %xmm6                  #67.9
        addpd     16000064(%rsp,%rax,8), %xmm5                  #67.9
        addpd     16000080(%rsp,%rax,8), %xmm4                  #67.9
        addpd     16000096(%rsp,%rax,8), %xmm3                  #67.9
        addpd     16000112(%rsp,%rax,8), %xmm2                  #67.9
        addpd     16000128(%rsp,%rax,8), %xmm0                  #67.9
        addq      $16, %rax                                     #66.5
        cmpq      $1000000, %rax                                #66.5
        jb        ..B1.22       # Prob 99%                      #66.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.23:                        # Preds ..B1.22
        addpd     %xmm7, %xmm8                                  #67.9
        addpd     %xmm5, %xmm6                                  #67.9
        addpd     %xmm3, %xmm4                                  #67.9
        addpd     %xmm0, %xmm2                                  #67.9
        addpd     %xmm6, %xmm8                                  #67.9
        addpd     %xmm2, %xmm4                                  #67.9
        addpd     %xmm4, %xmm8                                  #67.9
        movaps    %xmm8, %xmm2                                  #67.9
        movl      $.L_2__STRING.2, %edi                         #70.5
        unpckhpd  %xmm8, %xmm2                                  #67.9
        movl      $1, %eax                                      #70.5
        movaps    %xmm1, (%rsp)                                 #70.5
        addsd     %xmm2, %xmm8                                  #67.9
        movaps    %xmm8, %xmm0                                  #70.5
..___tag_value_main.11:                                         #70.5
        call      printf                                        #70.5
..___tag_value_main.12:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
        movaps    (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #74.5
        pxor      %xmm8, %xmm8                                  #75.9
        movaps    %xmm1, %xmm7                                  #75.9
        movaps    %xmm1, %xmm6                                  #75.9
        movaps    %xmm1, %xmm5                                  #75.9
        movaps    %xmm1, %xmm4                                  #75.9
        movaps    %xmm1, %xmm3                                  #75.9
        movaps    %xmm1, %xmm2                                  #75.9
        movaps    %xmm1, %xmm0                                  #75.9
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.25:                        # Preds ..B1.25 ..B1.24
        addpd     8000016(%rsp,%rax,8), %xmm8                   #75.9
        addpd     8000032(%rsp,%rax,8), %xmm7                   #75.9
        addpd     8000048(%rsp,%rax,8), %xmm6                   #75.9
        addpd     8000064(%rsp,%rax,8), %xmm5                   #75.9
        addpd     8000080(%rsp,%rax,8), %xmm4                   #75.9
        addpd     8000096(%rsp,%rax,8), %xmm3                   #75.9
        addpd     8000112(%rsp,%rax,8), %xmm2                   #75.9
        addpd     8000128(%rsp,%rax,8), %xmm0                   #75.9
        addq      $16, %rax                                     #74.5
        cmpq      $1000000, %rax                                #74.5
        jb        ..B1.25       # Prob 99%                      #74.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.26:                        # Preds ..B1.25
        addpd     %xmm7, %xmm8                                  #75.9
        addpd     %xmm5, %xmm6                                  #75.9
        addpd     %xmm3, %xmm4                                  #75.9
        addpd     %xmm0, %xmm2                                  #75.9
        addpd     %xmm6, %xmm8                                  #75.9
        addpd     %xmm2, %xmm4                                  #75.9
        addpd     %xmm4, %xmm8                                  #75.9
        movaps    %xmm8, %xmm2                                  #75.9
        movl      $.L_2__STRING.3, %edi                         #78.5
        unpckhpd  %xmm8, %xmm2                                  #75.9
        movl      $1, %eax                                      #78.5
        movaps    %xmm1, (%rsp)                                 #78.5
        addsd     %xmm2, %xmm8                                  #75.9
        movaps    %xmm8, %xmm0                                  #78.5
..___tag_value_main.13:                                         #78.5
        call      printf                                        #78.5
..___tag_value_main.14:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.27:                        # Preds ..B1.26
        movaps    (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #82.5
        pxor      %xmm7, %xmm7                                  #33.5
        movaps    %xmm1, %xmm6                                  #33.5
        movaps    %xmm1, %xmm5                                  #33.5
        movaps    %xmm1, %xmm4                                  #33.5
        movaps    %xmm1, %xmm3                                  #33.5
        movaps    %xmm1, %xmm2                                  #33.5
        movaps    %xmm1, %xmm0                                  #33.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.28:                        # Preds ..B1.28 ..B1.27
        addpd     16(%rsp,%rax,8), %xmm1                        #83.9
        addpd     32(%rsp,%rax,8), %xmm7                        #83.9
        addpd     48(%rsp,%rax,8), %xmm6                        #83.9
        addpd     64(%rsp,%rax,8), %xmm5                        #83.9
        addpd     80(%rsp,%rax,8), %xmm4                        #83.9
        addpd     96(%rsp,%rax,8), %xmm3                        #83.9
        addpd     112(%rsp,%rax,8), %xmm2                       #83.9
        addpd     128(%rsp,%rax,8), %xmm0                       #83.9
        addq      $16, %rax                                     #82.5
        cmpq      $1000000, %rax                                #82.5
        jb        ..B1.28       # Prob 99%                      #82.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.29:                        # Preds ..B1.28
        addpd     %xmm7, %xmm1                                  #33.5
        addpd     %xmm5, %xmm6                                  #33.5
        addpd     %xmm3, %xmm4                                  #33.5
        addpd     %xmm0, %xmm2                                  #33.5
        addpd     %xmm6, %xmm1                                  #33.5
        addpd     %xmm2, %xmm4                                  #33.5
        addpd     %xmm4, %xmm1                                  #33.5
        movaps    %xmm1, %xmm0                                  #33.5
        movl      $.L_2__STRING.4, %edi                         #86.5
        unpckhpd  %xmm1, %xmm0                                  #33.5
        movl      $1, %eax                                      #86.5
        addsd     %xmm0, %xmm1                                  #33.5
        movaps    %xmm1, %xmm0                                  #86.5
..___tag_value_main.15:                                         #86.5
        call      printf                                        #86.5
..___tag_value_main.16:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
        xorl      %eax, %eax                                    #88.12
        addq      $40000120, %rsp                               #88.12
..___tag_value_main.17:                                         #88.12
        popq      %r12                                          #88.12
        movq      %rbp, %rsp                                    #88.12
        popq      %rbp                                          #88.12
..___tag_value_main.18:                                         #
        ret                                                     #88.12
        .align    16,0x90
..___tag_value_main.20:                                         #
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
..___tag_value_add_internal.21:                                 #25.41
..L22:
                                                         #25.41
        addsd     %xmm1, %xmm0                                  #26.16
        ret                                                     #26.16
        .align    16,0x90
..___tag_value_add_internal.23:                                 #
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
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x40080000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
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
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	544044403
	.long	1025533285
	.long	174466336
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,13
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
	.4byte 0x0000004c
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.20-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0c10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.17-..___tag_value_main.6
	.2byte 0x04cc
	.4byte ..___tag_value_main.18-..___tag_value_main.17
	.4byte 0xc608070c
	.2byte 0x0000
	.4byte 0x00000014
	.4byte 0x0000006c
	.8byte ..___tag_value_add_internal.21
	.8byte ..___tag_value_add_internal.23-..___tag_value_add_internal.21
# End
