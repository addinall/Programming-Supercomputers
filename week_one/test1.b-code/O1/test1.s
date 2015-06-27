# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-O1 -S";
	.file "test1.c"
	.text
..TXTST0:
# -- Begin  add_internal
	.text
# mark_begin;

	.globl add_internal
add_internal:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B1.1:                         # Preds ..B1.0
..___tag_value_add_internal.1:                                  #24.41
..L2:
                                                          #24.41
        addsd     %xmm1, %xmm0                                  #25.16
                                # LOE
..B1.4:                         # Preds ..B1.1
        ret                                                     #25.16
..___tag_value_add_internal.3:                                  #
                                # LOE
# mark_end;
	.type	add_internal,@function
	.size	add_internal,.-add_internal
	.data
# -- End  add_internal
	.text
# -- Begin  main
	.text
# mark_begin;

	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B2.1:                         # Preds ..B2.0
..___tag_value_main.4:                                          #29.33
..L5:
                                                          #29.33
        subq      $32000008, %rsp                               #29.33
..___tag_value_main.6:                                          #
        xorl      %esi, %esi                                    #29.33
        pushq     $3                                            #29.33
        popq      %rdi                                          #29.33
        call      __intel_new_feature_proc_init                 #29.33
                                # LOE rbx rbp r12 r13 r14 r15
..B2.22:                        # Preds ..B2.1
        stmxcsr   (%rsp)                                        #29.33
        movl      $.L_2__STRING.0, %edi                         #34.5
        xorl      %eax, %eax                                    #34.5
        orl       $32832, (%rsp)                                #29.33
        ldmxcsr   (%rsp)                                        #29.33
..___tag_value_main.7:                                          #34.5
        call      printf                                        #34.5
..___tag_value_main.8:                                          #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.22
        xorl      %eax, %eax                                    #36.9
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.2 ..B2.3
        pxor      %xmm0, %xmm0                                  #37.22
        cvtsi2sd  %eax, %xmm0                                   #37.22
        movsd     %xmm0, 8000000(%rsp,%rax,8)                   #37.5
        incq      %rax                                          #36.19
        cmpq      $1000000, %rax                                #36.16
        jl        ..B2.3        # Prob 99%                      #36.16
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.4:                         # Preds ..B2.3
        xorl      %edx, %edx                                    #40.9
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.4 ..B2.5
        movl      %edx, %eax                                    #41.9
        pxor      %xmm0, %xmm0                                  #41.29
        addl      %eax, %eax                                    #41.29
        cvtsi2sd  %eax, %xmm0                                   #41.29
        movsd     %xmm0, 16000000(%rsp,%rdx,8)                  #41.9
        incq      %rdx                                          #40.19
        cmpq      $1000000, %rdx                                #40.16
        jl        ..B2.5        # Prob 99%                      #40.16
                                # LOE rdx rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
        xorl      %eax, %eax                                    #44.9
        movq      $0x3ff0000000000000, %rdx                     #45.17
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6 ..B2.7
        movq      %rdx, (%rsp,%rax,8)                           #45.9
        incq      %rax                                          #44.19
        cmpq      $1000000, %rax                                #44.16
        jl        ..B2.7        # Prob 99%                      #44.16
                                # LOE rax rdx rbx rbp r12 r13 r14 r15
..B2.8:                         # Preds ..B2.7
        xorl      %eax, %eax                                    #48.9
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.9:                         # Preds ..B2.8 ..B2.9
        movsd     8000000(%rsp,%rax,8), %xmm0                   #49.17
        addsd     16000000(%rsp,%rax,8), %xmm0                  #49.25
        movsd     %xmm0, (%rsp,%rax,8)                          #49.9
        incq      %rax                                          #48.19
        cmpq      $1000000, %rax                                #48.16
        jl        ..B2.9        # Prob 99%                      #48.16
                                # LOE rax rbx rbp r12 r13 r14 r15
..B2.10:                        # Preds ..B2.9
        movsd     16(%rsp), %xmm0                               #52.5
        movl      $.L_2__STRING.1, %edi                         #52.5
        pushq     $1                                            #52.5
        popq      %rax                                          #52.5
..___tag_value_main.9:                                          #52.5
        call      printf                                        #52.5
..___tag_value_main.10:                                         #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.11:                        # Preds ..B2.10
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #54.37
        xorl      %eax, %eax                                    #53.10
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1
..B2.12:                        # Preds ..B2.11 ..B2.12
        movsd     8000000(%rsp,%rax,8), %xmm0                   #54.31
        mulsd     %xmm1, %xmm0                                  #54.37
        addsd     16000000(%rsp,%rax,8), %xmm0                  #54.17
        movsd     %xmm0, 24000000(%rsp,%rax,8)                  #54.9
        incq      %rax                                          #53.20
        cmpq      $1000000, %rax                                #53.17
        jl        ..B2.12       # Prob 99%                      #53.17
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1
..B2.13:                        # Preds ..B2.12
        xorl      %eax, %eax                                    #59.9
        pxor      %xmm1, %xmm1                                  #57.5
        movaps    %xmm1, %xmm0                                  #57.5
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1
..B2.14:                        # Preds ..B2.13 ..B2.14
        addsd     (%rsp,%rax,8), %xmm0                          #60.9
        incq      %rax                                          #59.19
        cmpq      $1000000, %rax                                #59.16
        jl        ..B2.14       # Prob 99%                      #59.16
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm0 xmm1
..B2.15:                        # Preds ..B2.14
        movl      $.L_2__STRING.2, %edi                         #63.5
        pushq     $1                                            #63.5
        popq      %rax                                          #63.5
        movsd     %xmm1, (%rsp)                                 #63.5
..___tag_value_main.11:                                         #63.5
        call      printf                                        #63.5
..___tag_value_main.12:                                         #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.16:                        # Preds ..B2.15
        movsd     (%rsp), %xmm1                                 #
        xorl      %eax, %eax                                    #67.9
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1
..B2.17:                        # Preds ..B2.16 ..B2.17
        addsd     24000000(%rsp,%rax,8), %xmm1                  #68.9
        incq      %rax                                          #67.19
        cmpq      $1000000, %rax                                #67.16
        jl        ..B2.17       # Prob 99%                      #67.16
                                # LOE rax rbx rbp r12 r13 r14 r15 xmm1
..B2.18:                        # Preds ..B2.17
        movl      $.L_2__STRING.3, %edi                         #71.5
        pushq     $1                                            #71.5
        popq      %rax                                          #71.5
        movaps    %xmm1, %xmm0                                  #71.5
..___tag_value_main.13:                                         #71.5
        call      printf                                        #71.5
..___tag_value_main.14:                                         #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.19:                        # Preds ..B2.18
        xorl      %eax, %eax                                    #73.12
                                # LOE
..B2.23:                        # Preds ..B2.19
        addq      $32000008, %rsp                               #73.12
..___tag_value_main.15:                                         #
        ret                                                     #73.12
..___tag_value_main.16:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x40000000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1819043144
	.long	1867980911
	.long	560229490
	.word	10
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,14
	.space 2, 0x00 	# pad
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
	.4byte 0x00000014
	.4byte 0x0000001c
	.8byte ..___tag_value_add_internal.1
	.8byte ..___tag_value_add_internal.3-..___tag_value_add_internal.1
	.4byte 0x0000002c
	.4byte 0x00000034
	.8byte ..___tag_value_main.4
	.8byte ..___tag_value_main.16-..___tag_value_main.4
	.byte 0x04
	.4byte ..___tag_value_main.6-..___tag_value_main.4
	.4byte 0xa190900e
	.2byte 0x040f
	.4byte ..___tag_value_main.15-..___tag_value_main.6
	.8byte 0x000000000000080e
	.byte 0x00
# End
