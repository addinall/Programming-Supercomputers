# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-O3 -S";
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
        pushq     %r13                                          #29.33
        subq      $32000120, %rsp                               #29.33
        xorl      %esi, %esi                                    #29.33
        movl      $3, %edi                                      #29.33
        call      __intel_new_feature_proc_init                 #29.33
..___tag_value_main.6:                                          #
                                # LOE rbx r12 r14 r15
..B1.16:                        # Preds ..B1.1
        stmxcsr   (%rsp)                                        #29.33
        movl      $il0_peep_printf_format_0, %edi               #34.5
        orl       $32832, (%rsp)                                #29.33
        ldmxcsr   (%rsp)                                        #29.33
        call      puts                                          #34.5
                                # LOE rbx r12 r14 r15
..B1.2:                         # Preds ..B1.16
        movl      $4, %eax                                      #41.29
        movl      $2, %ecx                                      #37.5
        movq      $0x200000000, %rdx                            #41.29
        movq      $0x100000000, %rsi                            #37.5
        movd      %eax, %xmm2                                   #41.29
        movd      %ecx, %xmm0                                   #37.5
        xorl      %eax, %eax                                    #36.5
        pshufd    $0, %xmm2, %xmm3                              #41.29
        movd      %rdx, %xmm2                                   #41.29
        pshufd    $0, %xmm0, %xmm1                              #37.5
        movd      %rsi, %xmm0                                   #37.5
        xorl      %r13d, %r13d                                  #36.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3
..B1.3:                         # Preds ..B1.3 ..B1.2
        cvtdq2pd  %xmm2, %xmm4                                  #41.29
        cvtdq2pd  %xmm0, %xmm5                                  #37.22
        movntpd   %xmm4, 8000016(%rsp,%rax,8)                   #41.9
        paddd     %xmm3, %xmm2                                  #41.29
        movntpd   %xmm5, 16000016(%rsp,%rax,8)                  #37.5
        paddd     %xmm1, %xmm0                                  #37.5
        addpd     %xmm4, %xmm5                                  #49.25
        movntpd   %xmm5, 24000016(%rsp,%rax,8)                  #49.9
        addq      $2, %rax                                      #36.5
        cmpq      $1000000, %rax                                #36.5
        jb        ..B1.3        # Prob 99%                      #36.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3
..B1.4:                         # Preds ..B1.3
        mfence                                                  #36.5
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
        movsd     24000032(%rsp), %xmm0                         #52.5
        movl      $.L_2__STRING.1, %edi                         #52.5
        movl      $1, %eax                                      #52.5
..___tag_value_main.7:                                          #52.5
        call      printf                                        #52.5
..___tag_value_main.8:                                          #
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
        movaps    .L_2il0floatpacket.0(%rip), %xmm0             #54.37
        movq      %r13, %rax                                    #53.5
        pxor      %xmm2, %xmm2                                  #60.9
        movaps    %xmm2, %xmm1                                  #60.9
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2
..B1.7:                         # Preds ..B1.7 ..B1.6
        movaps    16000016(%rsp,%rax,8), %xmm3                  #54.31
        mulpd     %xmm0, %xmm3                                  #54.37
        addpd     8000016(%rsp,%rax,8), %xmm3                   #54.17
        movntpd   %xmm3, 16(%rsp,%rax,8)                        #54.9
        addpd     24000016(%rsp,%rax,8), %xmm1                  #60.9
        addq      $2, %rax                                      #53.5
        cmpq      $1000000, %rax                                #53.5
        jb        ..B1.7        # Prob 99%                      #53.5
                                # LOE rax rbx r12 r13 r14 r15 xmm0 xmm1 xmm2
..B1.8:                         # Preds ..B1.7
        mfence                                                  #53.5
                                # LOE rbx r12 r13 r14 r15 xmm1 xmm2
..B1.9:                         # Preds ..B1.8
        movaps    %xmm1, %xmm3                                  #60.9
        movl      $.L_2__STRING.2, %edi                         #63.5
        unpckhpd  %xmm1, %xmm3                                  #60.9
        movl      $1, %eax                                      #63.5
        movaps    %xmm2, (%rsp)                                 #63.5
        addsd     %xmm3, %xmm1                                  #60.9
        movaps    %xmm1, %xmm0                                  #63.5
..___tag_value_main.9:                                          #63.5
        call      printf                                        #63.5
..___tag_value_main.10:                                         #
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
        movaps    (%rsp), %xmm2                                 #
        pxor      %xmm7, %xmm7                                  #31.5
        movaps    %xmm2, %xmm6                                  #31.5
        movaps    %xmm2, %xmm5                                  #31.5
        movaps    %xmm2, %xmm4                                  #31.5
        movaps    %xmm2, %xmm3                                  #31.5
        movaps    %xmm2, %xmm1                                  #31.5
        movaps    %xmm2, %xmm0                                  #31.5
        .align    16,0x90
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.11:                        # Preds ..B1.11 ..B1.10
        addpd     16(%rsp,%r13,8), %xmm2                        #68.9
        addpd     32(%rsp,%r13,8), %xmm7                        #68.9
        addpd     48(%rsp,%r13,8), %xmm6                        #68.9
        addpd     64(%rsp,%r13,8), %xmm5                        #68.9
        addpd     80(%rsp,%r13,8), %xmm4                        #68.9
        addpd     96(%rsp,%r13,8), %xmm3                        #68.9
        addpd     112(%rsp,%r13,8), %xmm1                       #68.9
        addpd     128(%rsp,%r13,8), %xmm0                       #68.9
        addq      $16, %r13                                     #67.5
        cmpq      $1000000, %r13                                #67.5
        jb        ..B1.11       # Prob 99%                      #67.5
                                # LOE rbx r12 r13 r14 r15 xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7
..B1.12:                        # Preds ..B1.11
        addpd     %xmm7, %xmm2                                  #31.5
        addpd     %xmm5, %xmm6                                  #31.5
        addpd     %xmm3, %xmm4                                  #31.5
        addpd     %xmm0, %xmm1                                  #31.5
        addpd     %xmm6, %xmm2                                  #31.5
        addpd     %xmm1, %xmm4                                  #31.5
        addpd     %xmm4, %xmm2                                  #31.5
        movaps    %xmm2, %xmm0                                  #31.5
        movl      $.L_2__STRING.3, %edi                         #71.5
        unpckhpd  %xmm2, %xmm0                                  #31.5
        movl      $1, %eax                                      #71.5
        addsd     %xmm0, %xmm2                                  #31.5
        movaps    %xmm2, %xmm0                                  #71.5
..___tag_value_main.11:                                         #71.5
        call      printf                                        #71.5
..___tag_value_main.12:                                         #
                                # LOE rbx r12 r14 r15
..B1.13:                        # Preds ..B1.12
        xorl      %eax, %eax                                    #73.12
        addq      $32000120, %rsp                               #73.12
..___tag_value_main.13:                                         #73.12
        popq      %r13                                          #73.12
        movq      %rbp, %rsp                                    #73.12
        popq      %rbp                                          #73.12
..___tag_value_main.14:                                         #
        ret                                                     #73.12
        .align    16,0x90
..___tag_value_main.16:                                         #
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
..___tag_value_add_internal.17:                                 #24.41
..L18:
                                                         #24.41
        addsd     %xmm1, %xmm0                                  #25.16
        ret                                                     #25.16
        .align    16,0x90
..___tag_value_add_internal.19:                                 #
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
	.long	0x00000000,0x40000000,0x00000000,0x40000000
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
	.4byte 0x0000004c
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.16-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.8byte 0xff800d1c380e0d10
	.8byte 0xfffffff80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.13-..___tag_value_main.6
	.2byte 0x04cd
	.4byte ..___tag_value_main.14-..___tag_value_main.13
	.4byte 0xc608070c
	.2byte 0x0000
	.4byte 0x00000014
	.4byte 0x0000006c
	.8byte ..___tag_value_add_internal.17
	.8byte ..___tag_value_add_internal.19-..___tag_value_add_internal.17
# End
