# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-O0 -S";
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
        pushq     %rbp                                          #24.41
..___tag_value_add_internal.3:                                  #
        movq      %rsp, %rbp                                    #24.41
..___tag_value_add_internal.4:                                  #
        subq      $16, %rsp                                     #24.41
        movsd     %xmm0, -16(%rbp)                              #24.41
        movsd     %xmm1, -8(%rbp)                               #24.41
        movsd     -16(%rbp), %xmm0                              #25.12
        movsd     -8(%rbp), %xmm1                               #25.16
        addsd     %xmm1, %xmm0                                  #25.16
        leave                                                   #25.16
..___tag_value_add_internal.6:                                  #
        ret                                                     #25.16
..___tag_value_add_internal.7:                                  #
                                # LOE
# mark_end;
	.type	add_internal,@function
	.size	add_internal,.-add_internal
	.data
# -- End  add_internal
	.text
# -- Begin  main
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
	.text
# mark_begin;

	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B2.1:                         # Preds ..B2.0
..___tag_value_main.8:                                          #29.33
..L9:
                                                          #29.33
        pushq     %rbp                                          #29.33
..___tag_value_main.10:                                         #
        movq      %rsp, %rbp                                    #29.33
..___tag_value_main.11:                                         #
        subq      $32000064, %rsp                               #29.33
        movl      %edi, -32000040(%rbp)                         #29.33
        movq      %rsi, -32000032(%rbp)                         #29.33
        movl      $.L_2__STRING.0, %eax                         #34.5
        movq      %rax, %rdi                                    #34.5
        movl      $0, %eax                                      #34.5
..___tag_value_main.13:                                         #34.5
        call      printf                                        #34.5
..___tag_value_main.14:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B2.30:                        # Preds ..B2.1
        movl      %eax, -32000064(%rbp)                         #34.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.2:                         # Preds ..B2.30
        movl      $0, -32000060(%rbp)                           #36.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.3:                         # Preds ..B2.4 ..B2.2
        movl      -32000060(%rbp), %eax                         #36.14
        cmpl      $1000000, %eax                                #36.16
        jge       ..B2.5        # Prob 50%                      #36.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.4:                         # Preds ..B2.3
        movl      -32000060(%rbp), %eax                         #37.22
        cvtsi2sd  %eax, %xmm0                                   #37.22
        lea       -32000024(%rbp), %rax                         #37.5
        movl      -32000060(%rbp), %edx                         #37.8
        movslq    %edx, %rdx                                    #37.5
        imulq     $8, %rdx, %rdx                                #37.5
        addq      %rdx, %rax                                    #37.5
        movsd     %xmm0, (%rax)                                 #37.5
        movl      $1, %eax                                      #36.19
        addl      -32000060(%rbp), %eax                         #36.19
        movl      %eax, -32000060(%rbp)                         #36.19
        jmp       ..B2.3        # Prob 100%                     #36.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.5:                         # Preds ..B2.3
        movl      $0, -32000060(%rbp)                           #40.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.6:                         # Preds ..B2.7 ..B2.5
        movl      -32000060(%rbp), %eax                         #40.14
        cmpl      $1000000, %eax                                #40.16
        jge       ..B2.8        # Prob 50%                      #40.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.7:                         # Preds ..B2.6
        movl      -32000060(%rbp), %eax                         #41.29
        imull     $2, %eax, %eax                                #41.29
        cvtsi2sd  %eax, %xmm0                                   #41.29
        lea       -24000024(%rbp), %rax                         #41.9
        movl      -32000060(%rbp), %edx                         #41.12
        movslq    %edx, %rdx                                    #41.9
        imulq     $8, %rdx, %rdx                                #41.9
        addq      %rdx, %rax                                    #41.9
        movsd     %xmm0, (%rax)                                 #41.9
        movl      $1, %eax                                      #40.19
        addl      -32000060(%rbp), %eax                         #40.19
        movl      %eax, -32000060(%rbp)                         #40.19
        jmp       ..B2.6        # Prob 100%                     #40.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.8:                         # Preds ..B2.6
        movl      $0, -32000060(%rbp)                           #44.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.9:                         # Preds ..B2.10 ..B2.8
        movl      -32000060(%rbp), %eax                         #44.14
        cmpl      $1000000, %eax                                #44.16
        jge       ..B2.11       # Prob 50%                      #44.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.10:                        # Preds ..B2.9
        movsd     .L_2il0floatpacket.1(%rip), %xmm0             #45.9
        lea       -16000024(%rbp), %rax                         #45.9
        movl      -32000060(%rbp), %edx                         #45.12
        movslq    %edx, %rdx                                    #45.9
        imulq     $8, %rdx, %rdx                                #45.9
        addq      %rdx, %rax                                    #45.9
        movsd     %xmm0, (%rax)                                 #45.9
        movl      $1, %eax                                      #44.19
        addl      -32000060(%rbp), %eax                         #44.19
        movl      %eax, -32000060(%rbp)                         #44.19
        jmp       ..B2.9        # Prob 100%                     #44.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.11:                        # Preds ..B2.9
        movl      $0, -32000060(%rbp)                           #48.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.12:                        # Preds ..B2.13 ..B2.11
        movl      -32000060(%rbp), %eax                         #48.14
        cmpl      $1000000, %eax                                #48.16
        jge       ..B2.14       # Prob 50%                      #48.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.13:                        # Preds ..B2.12
        lea       -32000024(%rbp), %rax                         #49.17
        movl      -32000060(%rbp), %edx                         #49.20
        movslq    %edx, %rdx                                    #49.17
        imulq     $8, %rdx, %rdx                                #49.17
        addq      %rdx, %rax                                    #49.17
        lea       -24000024(%rbp), %rdx                         #49.25
        movl      -32000060(%rbp), %ecx                         #49.28
        movslq    %ecx, %rcx                                    #49.25
        imulq     $8, %rcx, %rcx                                #49.25
        addq      %rcx, %rdx                                    #49.25
        movsd     (%rax), %xmm0                                 #49.17
        movsd     (%rdx), %xmm1                                 #49.25
        addsd     %xmm1, %xmm0                                  #49.25
        lea       -16000024(%rbp), %rax                         #49.9
        movl      -32000060(%rbp), %edx                         #49.12
        movslq    %edx, %rdx                                    #49.9
        imulq     $8, %rdx, %rdx                                #49.9
        addq      %rdx, %rax                                    #49.9
        movsd     %xmm0, (%rax)                                 #49.9
        movl      $1, %eax                                      #48.19
        addl      -32000060(%rbp), %eax                         #48.19
        movl      %eax, -32000060(%rbp)                         #48.19
        jmp       ..B2.12       # Prob 100%                     #48.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.14:                        # Preds ..B2.12
        movl      $.L_2__STRING.1, %eax                         #52.5
        lea       -16000024(%rbp), %rdx                         #52.5
        addq      $16, %rdx                                     #52.5
        movsd     (%rdx), %xmm0                                 #52.5
        movq      %rax, %rdi                                    #52.5
        movl      $1, %eax                                      #52.5
..___tag_value_main.15:                                         #52.5
        call      printf                                        #52.5
..___tag_value_main.16:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B2.31:                        # Preds ..B2.14
        movl      %eax, -32000056(%rbp)                         #52.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.15:                        # Preds ..B2.31
        movl      $0, -32000060(%rbp)                           #53.10
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.16:                        # Preds ..B2.18 ..B2.15
        movl      -32000060(%rbp), %eax                         #53.15
        cmpl      $1000000, %eax                                #53.17
        jge       ..B2.19       # Prob 50%                      #53.17
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.17:                        # Preds ..B2.16
        lea       -32000024(%rbp), %rax                         #54.17
        movl      -32000060(%rbp), %edx                         #54.17
        movslq    %edx, %rdx                                    #54.17
        imulq     $8, %rdx, %rdx                                #54.17
        addq      %rdx, %rax                                    #54.17
        movsd     (%rax), %xmm0                                 #54.17
        movsd     .L_2il0floatpacket.0(%rip), %xmm1             #54.17
        mulsd     %xmm1, %xmm0                                  #54.17
        lea       -24000024(%rbp), %rax                         #54.17
        movl      -32000060(%rbp), %edx                         #54.17
        movslq    %edx, %rdx                                    #54.17
        imulq     $8, %rdx, %rdx                                #54.17
        addq      %rdx, %rax                                    #54.17
        movsd     (%rax), %xmm1                                 #54.17
..___tag_value_main.17:                                         #54.17
        call      add_internal                                  #54.17
..___tag_value_main.18:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip xmm0
..B2.32:                        # Preds ..B2.17
        movsd     %xmm0, -8000024(%rbp)                         #54.17
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.18:                        # Preds ..B2.32
        lea       -8000008(%rbp), %rax                          #54.9
        movl      -32000060(%rbp), %edx                         #54.12
        movslq    %edx, %rdx                                    #54.9
        imulq     $8, %rdx, %rdx                                #54.9
        addq      %rdx, %rax                                    #54.9
        movsd     -8000024(%rbp), %xmm0                         #54.17
        movsd     %xmm0, (%rax)                                 #54.9
        movl      $1, %eax                                      #53.20
        addl      -32000060(%rbp), %eax                         #53.20
        movl      %eax, -32000060(%rbp)                         #53.20
        jmp       ..B2.16       # Prob 100%                     #53.20
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.19:                        # Preds ..B2.16
        pxor      %xmm0, %xmm0                                  #57.5
        movsd     %xmm0, -8000016(%rbp)                         #57.5
        movl      $0, -32000060(%rbp)                           #59.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.20:                        # Preds ..B2.21 ..B2.19
        movl      -32000060(%rbp), %eax                         #59.14
        cmpl      $1000000, %eax                                #59.16
        jge       ..B2.22       # Prob 50%                      #59.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.21:                        # Preds ..B2.20
        lea       -16000024(%rbp), %rax                         #60.16
        movl      -32000060(%rbp), %edx                         #60.19
        movslq    %edx, %rdx                                    #60.16
        imulq     $8, %rdx, %rdx                                #60.16
        addq      %rdx, %rax                                    #60.16
        movsd     -8000016(%rbp), %xmm0                         #60.9
        movsd     (%rax), %xmm1                                 #60.16
        addsd     %xmm1, %xmm0                                  #60.9
        movsd     %xmm0, -8000016(%rbp)                         #60.9
        movl      $1, %eax                                      #59.19
        addl      -32000060(%rbp), %eax                         #59.19
        movl      %eax, -32000060(%rbp)                         #59.19
        jmp       ..B2.20       # Prob 100%                     #59.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.22:                        # Preds ..B2.20
        movl      $.L_2__STRING.2, %eax                         #63.5
        movsd     -8000016(%rbp), %xmm0                         #63.5
        movq      %rax, %rdi                                    #63.5
        movl      $1, %eax                                      #63.5
..___tag_value_main.19:                                         #63.5
        call      printf                                        #63.5
..___tag_value_main.20:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B2.33:                        # Preds ..B2.22
        movl      %eax, -32000052(%rbp)                         #63.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.23:                        # Preds ..B2.33
        pxor      %xmm0, %xmm0                                  #65.5
        movsd     %xmm0, -8000016(%rbp)                         #65.5
        movl      $0, -32000060(%rbp)                           #67.9
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.24:                        # Preds ..B2.25 ..B2.23
        movl      -32000060(%rbp), %eax                         #67.14
        cmpl      $1000000, %eax                                #67.16
        jge       ..B2.26       # Prob 50%                      #67.16
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.25:                        # Preds ..B2.24
        lea       -8000008(%rbp), %rax                          #68.16
        movl      -32000060(%rbp), %edx                         #68.19
        movslq    %edx, %rdx                                    #68.16
        imulq     $8, %rdx, %rdx                                #68.16
        addq      %rdx, %rax                                    #68.16
        movsd     -8000016(%rbp), %xmm0                         #68.9
        movsd     (%rax), %xmm1                                 #68.16
        addsd     %xmm1, %xmm0                                  #68.9
        movsd     %xmm0, -8000016(%rbp)                         #68.9
        movl      $1, %eax                                      #67.19
        addl      -32000060(%rbp), %eax                         #67.19
        movl      %eax, -32000060(%rbp)                         #67.19
        jmp       ..B2.24       # Prob 100%                     #67.19
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.26:                        # Preds ..B2.24
        movl      $.L_2__STRING.3, %eax                         #71.5
        movsd     -8000016(%rbp), %xmm0                         #71.5
        movq      %rax, %rdi                                    #71.5
        movl      $1, %eax                                      #71.5
..___tag_value_main.21:                                         #71.5
        call      printf                                        #71.5
..___tag_value_main.22:                                         #
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip eax
..B2.34:                        # Preds ..B2.26
        movl      %eax, -32000048(%rbp)                         #71.5
                                # LOE rbx rbp rsp r12 r13 r14 r15 rip
..B2.27:                        # Preds ..B2.34
        movl      $0, %eax                                      #73.12
        leave                                                   #73.12
..___tag_value_main.23:                                         #
        ret                                                     #73.12
..___tag_value_main.24:                                         #
                                # LOE
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
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
	.4byte 0x0000002c
	.4byte 0x0000001c
	.8byte ..___tag_value_add_internal.1
	.8byte ..___tag_value_add_internal.7-..___tag_value_add_internal.1
	.byte 0x04
	.4byte ..___tag_value_add_internal.3-..___tag_value_add_internal.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_add_internal.4-..___tag_value_add_internal.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_add_internal.6-..___tag_value_add_internal.4
	.2byte 0x00c6
	.4byte 0x0000002c
	.4byte 0x0000004c
	.8byte ..___tag_value_main.8
	.8byte ..___tag_value_main.24-..___tag_value_main.8
	.byte 0x04
	.4byte ..___tag_value_main.10-..___tag_value_main.8
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.11-..___tag_value_main.10
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.23-..___tag_value_main.11
	.2byte 0x00c6
# End
