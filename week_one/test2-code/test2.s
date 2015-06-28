# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-unroll-agressive -S";
	.file "test2.c"
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
..___tag_value_main.1:                                          #35.33
..L2:
                                                          #35.33
        pushq     %rbp                                          #35.33
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #35.33
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #35.33
        subq      $80000128, %rsp                               #35.33
        xorl      %esi, %esi                                    #35.33
        movl      $3, %edi                                      #35.33
        call      __intel_new_feature_proc_init                 #35.33
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.1
        stmxcsr   (%rsp)                                        #35.33
        movl      $il0_peep_printf_format_0, %edi               #40.5
        orl       $32832, (%rsp)                                #35.33
        ldmxcsr   (%rsp)                                        #35.33
        call      puts                                          #40.5
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.33
        xorl      %edx, %edx                                    #42.5
        xorl      %eax, %eax                                    #42.5
                                # LOE rax rbx r12 r13 r14 r15 edx
..B1.3:                         # Preds ..B1.3 ..B1.2
        pxor      %xmm0, %xmm0                                  #44.33
        lea       (%rdx,%rdx), %ecx                             #43.13
        pxor      %xmm1, %xmm1                                  #44.33
        lea       1(%rdx,%rdx), %esi                            #43.13
        cvtsi2sd  %ecx, %xmm0                                   #44.33
        cvtsi2sd  %esi, %xmm1                                   #44.33
        incl      %edx                                          #42.5
        unpcklpd  %xmm0, %xmm0                                  #44.33
        unpcklpd  %xmm1, %xmm1                                  #44.33
        movaps    %xmm0, 32000016(%rsp,%rax)                    #44.13
        movaps    %xmm1, 32000032(%rsp,%rax)                    #44.13
        addq      $32, %rax                                     #42.5
        cmpl      $500000, %edx                                 #42.5
        jb        ..B1.3        # Prob 99%                      #42.5
                                # LOE rax rbx r12 r13 r14 r15 edx
..B1.4:                         # Preds ..B1.3
        xorl      %edx, %edx                                    #48.5
        xorl      %eax, %eax                                    #48.5
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 edx
..B1.5:                         # Preds ..B1.5 ..B1.4
        pxor      %xmm0, %xmm0                                  #50.36
        lea       (,%rdx,4), %ecx                               #49.13
        pxor      %xmm1, %xmm1                                  #50.36
        lea       2(,%rdx,4), %esi                              #50.36
        cvtsi2sd  %ecx, %xmm0                                   #50.36
        cvtsi2sd  %esi, %xmm1                                   #50.36
        incl      %edx                                          #48.5
        unpcklpd  %xmm0, %xmm0                                  #50.36
        unpcklpd  %xmm1, %xmm1                                  #50.36
        movaps    %xmm0, 48000016(%rsp,%rax)                    #50.13
        movaps    %xmm1, 48000032(%rsp,%rax)                    #50.13
        addq      $32, %rax                                     #48.5
        cmpl      $500000, %edx                                 #48.5
        jb        ..B1.5        # Prob 99%                      #48.5
                                # LOE rax rbx r12 r13 r14 r15 edx
..B1.6:                         # Preds ..B1.5
        movaps    .L_2il0floatpacket.0(%rip), %xmm0             #56.24
        xorl      %eax, %eax                                    #54.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.7:                         # Preds ..B1.7 ..B1.6
        movntpd   %xmm0, 64000016(%rsp,%rax,8)                  #56.13
        addq      $2, %rax                                      #54.5
        cmpq      $2000000, %rax                                #54.5
        jb        ..B1.7        # Prob 99%                      #54.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.8:                         # Preds ..B1.7
        mfence                                                  #54.5
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.8
        xorl      %eax, %eax                                    #60.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.10 ..B1.9
        movaps    32000016(%rsp,%rax,8), %xmm0                  #62.24
        addpd     48000016(%rsp,%rax,8), %xmm0                  #62.35
        movntpd   %xmm0, 64000016(%rsp,%rax,8)                  #62.13
        addq      $2, %rax                                      #60.5
        cmpq      $2000000, %rax                                #60.5
        jb        ..B1.10       # Prob 99%                      #60.5
                                # LOE rax rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
        mfence                                                  #60.5
                                # LOE rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
        movsd     64000064(%rsp), %xmm0                         #66.5
        movl      $.L_2__STRING.1, %edi                         #66.5
        movl      $1, %eax                                      #66.5
..___tag_value_main.6:                                          #66.5
        call      printf                                        #66.5
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
        movaps    .L_2il0floatpacket.1(%rip), %xmm0             #70.47
        xorl      %eax, %eax                                    #68.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.14:                        # Preds ..B1.14 ..B1.13
        movaps    32000016(%rsp,%rax,8), %xmm1                  #70.38
        mulpd     %xmm0, %xmm1                                  #70.47
        addpd     48000016(%rsp,%rax,8), %xmm1                  #70.24
        movntpd   %xmm1, 16000016(%rsp,%rax,8)                  #70.13
        addq      $2, %rax                                      #68.5
        cmpq      $2000000, %rax                                #68.5
        jb        ..B1.14       # Prob 99%                      #68.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.15:                        # Preds ..B1.14
        mfence                                                  #68.5
                                # LOE rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15
        movq      %r12, 80000016(%rsp)                          #74.10
        lea       16(%rsp), %rdi                                #74.10
        movq      %r13, 80000024(%rsp)                          #74.10
        xorl      %ecx, %ecx                                    #74.10
        movq      %r14, 80000032(%rsp)                          #74.10
        xorl      %edx, %edx                                    #74.10
        movq      %r15, 80000040(%rsp)                          #74.10
        lea       32000016(%rsp), %rax                          #74.10
        movq      %rbx, 80000048(%rsp)                          #74.10
        lea       48000016(%rsp), %rsi                          #74.10
..___tag_value_main.8:                                          #
        movq      %rdi, %r14                                    #74.10
                                # LOE rax rdx rsi r14 ecx
..B1.17:                        # Preds ..B1.20 ..B1.16
        movq      %rdx, 8(%rsp)                                 #88.37
        xorl      %r13d, %r13d                                  #75.13
        movl      %ecx, (%rsp)                                  #88.37
        lea       (%rax,%rdx), %rbx                             #88.37
        lea       (%rsi,%rdx), %r12                             #88.37
        lea       (%r14,%rdx), %r15                             #88.37
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.19 ..B1.17
        movsd     (%rbx,%r13,8), %xmm0                          #88.24
        movsd     (%r12,%r13,8), %xmm1                          #88.24
..___tag_value_main.13:                                         #88.24
        call      add_external                                  #88.24
..___tag_value_main.14:                                         #
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.19:                        # Preds ..B1.18
        movsd     %xmm0, (%r15,%r13,8)                          #88.13
        incq      %r13                                          #75.23
        cmpq      $2, %r13                                      #75.20
        jl        ..B1.18       # Prob 50%                      #75.20
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.19
        movl      (%rsp), %ecx                                  #
        lea       48000016(%rsp), %rsi                          #
        incl      %ecx                                          #74.20
        lea       32000016(%rsp), %rax                          #
        movq      8(%rsp), %rdx                                 #
        addq      $16, %rdx                                     #74.20
        cmpl      $1000000, %ecx                                #74.17
        jl        ..B1.17       # Prob 99%                      #74.17
                                # LOE rax rdx rsi r14 ecx
..B1.21:                        # Preds ..B1.20
        movq      80000016(%rsp), %r12                          #
..___tag_value_main.15:                                         #
        xorl      %eax, %eax                                    #94.5
        pxor      %xmm1, %xmm1                                  #96.13
        movq      80000024(%rsp), %r13                          #
..___tag_value_main.16:                                         #
        movaps    %xmm1, %xmm8                                  #96.13
        movq      80000032(%rsp), %r14                          #
..___tag_value_main.17:                                         #
        movaps    %xmm1, %xmm7                                  #96.13
        movq      80000040(%rsp), %r15                          #
..___tag_value_main.18:                                         #
        movaps    %xmm1, %xmm6                                  #96.13
        movq      80000048(%rsp), %rbx                          #
..___tag_value_main.19:                                         #
        movaps    %xmm1, %xmm5                                  #96.13
        movaps    %xmm1, %xmm4                                  #96.13
        movaps    %xmm1, %xmm3                                  #96.13
        movaps    %xmm1, %xmm2                                  #96.13
        movaps    %xmm1, %xmm0                                  #96.13
..___tag_value_main.20:                                         #
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.22:                        # Preds ..B1.22 ..B1.21
        addpd     64000016(%rsp,%rax,8), %xmm8                  #96.13
        addpd     64000032(%rsp,%rax,8), %xmm7                  #96.13
        addpd     64000048(%rsp,%rax,8), %xmm6                  #96.13
        addpd     64000064(%rsp,%rax,8), %xmm5                  #96.13
        addpd     64000080(%rsp,%rax,8), %xmm4                  #96.13
        addpd     64000096(%rsp,%rax,8), %xmm3                  #96.13
        addpd     64000112(%rsp,%rax,8), %xmm2                  #96.13
        addpd     64000128(%rsp,%rax,8), %xmm0                  #96.13
        addq      $16, %rax                                     #94.5
        cmpq      $2000000, %rax                                #94.5
        jb        ..B1.22       # Prob 99%                      #94.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.23:                        # Preds ..B1.22
        addpd     %xmm7, %xmm8                                  #96.13
        addpd     %xmm5, %xmm6                                  #96.13
        addpd     %xmm3, %xmm4                                  #96.13
        addpd     %xmm0, %xmm2                                  #96.13
        addpd     %xmm6, %xmm8                                  #96.13
        addpd     %xmm2, %xmm4                                  #96.13
        addpd     %xmm4, %xmm8                                  #96.13
        movaps    %xmm8, %xmm2                                  #96.13
        movl      $.L_2__STRING.2, %edi                         #100.5
        unpckhpd  %xmm8, %xmm2                                  #96.13
        movl      $1, %eax                                      #100.5
        movaps    %xmm1, (%rsp)                                 #100.5
        addsd     %xmm2, %xmm8                                  #96.13
        movaps    %xmm8, %xmm0                                  #100.5
..___tag_value_main.25:                                         #100.5
        call      printf                                        #100.5
..___tag_value_main.26:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
        movaps    (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #104.5
        pxor      %xmm8, %xmm8                                  #106.13
        movaps    %xmm1, %xmm7                                  #106.13
        movaps    %xmm1, %xmm6                                  #106.13
        movaps    %xmm1, %xmm5                                  #106.13
        movaps    %xmm1, %xmm4                                  #106.13
        movaps    %xmm1, %xmm3                                  #106.13
        movaps    %xmm1, %xmm2                                  #106.13
        movaps    %xmm1, %xmm0                                  #106.13
        .align    16,0x90
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.25:                        # Preds ..B1.25 ..B1.24
        addpd     16000016(%rsp,%rax,8), %xmm8                  #106.13
        addpd     16000032(%rsp,%rax,8), %xmm7                  #106.13
        addpd     16000048(%rsp,%rax,8), %xmm6                  #106.13
        addpd     16000064(%rsp,%rax,8), %xmm5                  #106.13
        addpd     16000080(%rsp,%rax,8), %xmm4                  #106.13
        addpd     16000096(%rsp,%rax,8), %xmm3                  #106.13
        addpd     16000112(%rsp,%rax,8), %xmm2                  #106.13
        addpd     16000128(%rsp,%rax,8), %xmm0                  #106.13
        addq      $16, %rax                                     #104.5
        cmpq      $2000000, %rax                                #104.5
        jb        ..B1.25       # Prob 99%                      #104.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7 xmm8
..B1.26:                        # Preds ..B1.25
        addpd     %xmm7, %xmm8                                  #106.13
        addpd     %xmm5, %xmm6                                  #106.13
        addpd     %xmm3, %xmm4                                  #106.13
        addpd     %xmm0, %xmm2                                  #106.13
        addpd     %xmm6, %xmm8                                  #106.13
        addpd     %xmm2, %xmm4                                  #106.13
        addpd     %xmm4, %xmm8                                  #106.13
        movaps    %xmm8, %xmm2                                  #106.13
        movl      $.L_2__STRING.3, %edi                         #110.5
        unpckhpd  %xmm8, %xmm2                                  #106.13
        movl      $1, %eax                                      #110.5
        movaps    %xmm1, (%rsp)                                 #110.5
        addsd     %xmm2, %xmm8                                  #106.13
        movaps    %xmm8, %xmm0                                  #110.5
..___tag_value_main.27:                                         #110.5
        call      printf                                        #110.5
..___tag_value_main.28:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.27:                        # Preds ..B1.26
        movaps    (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #114.5
        pxor      %xmm7, %xmm7                                  #37.5
        movaps    %xmm1, %xmm6                                  #37.5
        movaps    %xmm1, %xmm5                                  #37.5
        movaps    %xmm1, %xmm4                                  #37.5
        movaps    %xmm1, %xmm3                                  #37.5
        movaps    %xmm1, %xmm2                                  #37.5
        movaps    %xmm1, %xmm0                                  #37.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.28:                        # Preds ..B1.28 ..B1.27
        addpd     16(%rsp,%rax,8), %xmm1                        #116.13
        addpd     32(%rsp,%rax,8), %xmm7                        #116.13
        addpd     48(%rsp,%rax,8), %xmm6                        #116.13
        addpd     64(%rsp,%rax,8), %xmm5                        #116.13
        addpd     80(%rsp,%rax,8), %xmm4                        #116.13
        addpd     96(%rsp,%rax,8), %xmm3                        #116.13
        addpd     112(%rsp,%rax,8), %xmm2                       #116.13
        addpd     128(%rsp,%rax,8), %xmm0                       #116.13
        addq      $16, %rax                                     #114.5
        cmpq      $2000000, %rax                                #114.5
        jb        ..B1.28       # Prob 99%                      #114.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.29:                        # Preds ..B1.28
        addpd     %xmm7, %xmm1                                  #37.5
        addpd     %xmm5, %xmm6                                  #37.5
        addpd     %xmm3, %xmm4                                  #37.5
        addpd     %xmm0, %xmm2                                  #37.5
        addpd     %xmm6, %xmm1                                  #37.5
        addpd     %xmm2, %xmm4                                  #37.5
        addpd     %xmm4, %xmm1                                  #37.5
        movaps    %xmm1, %xmm0                                  #37.5
        movl      $.L_2__STRING.4, %edi                         #120.5
        unpckhpd  %xmm1, %xmm0                                  #37.5
        movl      $1, %eax                                      #120.5
        addsd     %xmm0, %xmm1                                  #37.5
        movaps    %xmm1, %xmm0                                  #120.5
..___tag_value_main.29:                                         #120.5
        call      printf                                        #120.5
..___tag_value_main.30:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.30:                        # Preds ..B1.29
        xorl      %eax, %eax                                    #122.12
        movq      %rbp, %rsp                                    #122.12
        popq      %rbp                                          #122.12
..___tag_value_main.31:                                         #
        ret                                                     #122.12
        .align    16,0x90
..___tag_value_main.33:                                         #
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
..___tag_value_add_internal.34:                                 #29.41
..L35:
                                                         #29.41
        addsd     %xmm1, %xmm0                                  #30.16
        ret                                                     #30.16
        .align    16,0x90
..___tag_value_add_internal.36:                                 #
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
	.4byte 0x00000104
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.33-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.8-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffb00d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xffff900d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xff980d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xa00d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffffa8
	.2byte 0x0422
	.4byte ..___tag_value_main.15-..___tag_value_main.8
	.2byte 0x04cc
	.4byte ..___tag_value_main.16-..___tag_value_main.15
	.2byte 0x04cd
	.4byte ..___tag_value_main.17-..___tag_value_main.16
	.2byte 0x04ce
	.4byte ..___tag_value_main.18-..___tag_value_main.17
	.2byte 0x04cf
	.4byte ..___tag_value_main.19-..___tag_value_main.18
	.2byte 0x04c3
	.4byte ..___tag_value_main.20-..___tag_value_main.19
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffb00d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xffff900d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xff980d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xa00d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffffa8
	.2byte 0x0422
	.4byte ..___tag_value_main.31-..___tag_value_main.20
	.8byte 0x00000000c608070c
	.4byte 0x00000014
	.4byte 0x00000124
	.8byte ..___tag_value_add_internal.34
	.8byte ..___tag_value_add_internal.36-..___tag_value_add_internal.34
# End
