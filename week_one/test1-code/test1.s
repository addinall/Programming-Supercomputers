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
..___tag_value_main.1:                                          #19.33
..L2:
                                                          #19.33
        pushq     %rbp                                          #19.33
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #19.33
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #19.33
        subq      $24000000, %rsp                               #19.33
        xorl      %esi, %esi                                    #19.33
        movl      $3, %edi                                      #19.33
        call      __intel_new_feature_proc_init                 #19.33
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.1
        stmxcsr   (%rsp)                                        #19.33
        movl      $il0_peep_printf_format_0, %edi               #22.4
        orl       $32832, (%rsp)                                #19.33
        ldmxcsr   (%rsp)                                        #19.33
        call      puts                                          #22.4
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.21
        movl      $2, %eax                                      #25.7
        movq      $0x100000000, %rdx                            #25.7
        movd      %eax, %xmm0                                   #25.7
        xorl      %eax, %eax                                    #24.4
        pshufd    $0, %xmm0, %xmm1                              #25.7
        movd      %rdx, %xmm0                                   #25.7
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.3:                         # Preds ..B1.3 ..B1.2
        cvtdq2pd  %xmm0, %xmm2                                  #25.24
        movntpd   %xmm2, 16000000(%rsp,%rax,8)                  #25.7
        addq      $2, %rax                                      #24.4
        paddd     %xmm1, %xmm0                                  #25.7
        cmpq      $1000000, %rax                                #24.4
        jb        ..B1.3        # Prob 99%                      #24.4
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.4:                         # Preds ..B1.3
        mfence                                                  #24.4
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        movl      $4, %eax                                      #28.27
        movq      $0x200000000, %rdx                            #28.27
        movd      %eax, %xmm0                                   #28.27
        xorl      %eax, %eax                                    #27.4
        pshufd    $0, %xmm0, %xmm1                              #28.27
        movd      %rdx, %xmm0                                   #28.27
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.6:                         # Preds ..B1.6 ..B1.5
        cvtdq2pd  %xmm0, %xmm2                                  #28.27
        movntpd   %xmm2, 8000000(%rsp,%rax,8)                   #28.7
        addq      $2, %rax                                      #27.4
        paddd     %xmm1, %xmm0                                  #28.27
        cmpq      $1000000, %rax                                #27.4
        jb        ..B1.6        # Prob 99%                      #27.4
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1
..B1.7:                         # Preds ..B1.6
        mfence                                                  #27.4
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
        movaps    .L_2il0floatpacket.0(%rip), %xmm0             #31.15
        xorl      %eax, %eax                                    #30.4
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.9:                         # Preds ..B1.9 ..B1.8
        movntpd   %xmm0, (%rsp,%rax,8)                          #31.7
        addq      $2, %rax                                      #30.4
        cmpq      $1000000, %rax                                #30.4
        jb        ..B1.9        # Prob 99%                      #30.4
                                # LOE rax rbx r12 r13 r14 r15 xmm0
..B1.10:                        # Preds ..B1.9
        mfence                                                  #30.4
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
        xorl      %eax, %eax                                    #33.4
                                # LOE rax rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.12 ..B1.11
        movaps    16000000(%rsp,%rax,8), %xmm0                  #34.15
        addpd     8000000(%rsp,%rax,8), %xmm0                   #34.23
        movntpd   %xmm0, (%rsp,%rax,8)                          #34.7
        addq      $2, %rax                                      #33.4
        cmpq      $1000000, %rax                                #33.4
        jb        ..B1.12       # Prob 99%                      #33.4
                                # LOE rax rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
        mfence                                                  #33.4
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
        movsd     16(%rsp), %xmm0                               #36.4
        movl      $.L_2__STRING.1, %edi                         #36.4
        movl      $1, %eax                                      #36.4
..___tag_value_main.6:                                          #36.4
        call      printf                                        #36.4
..___tag_value_main.7:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
        xorl      %eax, %eax                                    #39.4
        pxor      %xmm7, %xmm7                                  #20.1
        movaps    %xmm7, %xmm6                                  #20.1
        movaps    %xmm7, %xmm5                                  #20.1
        movaps    %xmm7, %xmm4                                  #20.1
        movaps    %xmm7, %xmm3                                  #20.1
        movaps    %xmm7, %xmm2                                  #20.1
        movaps    %xmm7, %xmm1                                  #20.1
        movaps    %xmm7, %xmm0                                  #20.1
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.16:                        # Preds ..B1.16 ..B1.15
        addpd     (%rsp,%rax,8), %xmm7                          #40.7
        addpd     16(%rsp,%rax,8), %xmm6                        #40.7
        addpd     32(%rsp,%rax,8), %xmm5                        #40.7
        addpd     48(%rsp,%rax,8), %xmm4                        #40.7
        addpd     64(%rsp,%rax,8), %xmm3                        #40.7
        addpd     80(%rsp,%rax,8), %xmm2                        #40.7
        addpd     96(%rsp,%rax,8), %xmm1                        #40.7
        addpd     112(%rsp,%rax,8), %xmm0                       #40.7
        addq      $16, %rax                                     #39.4
        cmpq      $1000000, %rax                                #39.4
        jb        ..B1.16       # Prob 99%                      #39.4
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.17:                        # Preds ..B1.16
        addpd     %xmm6, %xmm7                                  #20.1
        addpd     %xmm4, %xmm5                                  #20.1
        addpd     %xmm2, %xmm3                                  #20.1
        addpd     %xmm0, %xmm1                                  #20.1
        addpd     %xmm5, %xmm7                                  #20.1
        addpd     %xmm1, %xmm3                                  #20.1
        addpd     %xmm3, %xmm7                                  #20.1
        movaps    %xmm7, %xmm0                                  #20.1
        movl      $.L_2__STRING.2, %edi                         #42.4
        unpckhpd  %xmm7, %xmm0                                  #20.1
        movl      $1, %eax                                      #42.4
        addsd     %xmm0, %xmm7                                  #20.1
        movaps    %xmm7, %xmm0                                  #42.4
..___tag_value_main.8:                                          #42.4
        call      printf                                        #42.4
..___tag_value_main.9:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.17
        xorl      %eax, %eax                                    #44.11
        movq      %rbp, %rsp                                    #44.11
        popq      %rbp                                          #44.11
..___tag_value_main.10:                                         #
        ret                                                     #44.11
        .align    16,0x90
..___tag_value_main.12:                                         #
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
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,16
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
	.long	1713709117
	.word	10
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,10
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
	.8byte ..___tag_value_main.12-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.10-..___tag_value_main.4
	.8byte 0x00000000c608070c
	.2byte 0x0000
# End
