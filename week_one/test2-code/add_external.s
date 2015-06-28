# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 2015040";
# mark_description "7";
# mark_description "-S";
	.file "add_external.c"
	.text
..TXTST0:
# -- Begin  add_external
	.text
# mark_begin;
       .align    16,0x90
	.globl add_external
add_external:
# parameter 1: %xmm0
# parameter 2: %xmm1
..B1.1:                         # Preds ..B1.0
..___tag_value_add_external.1:                                  #23.45
..L2:

# put it back to add!
                                                          #23.45
        addsd     %xmm1, %xmm0                                  #24.20
#
# this hack is for the super computer master class lab - ma -
#
#        subsd     %xmm1, %xmm0                                  #24.20
        ret                                                     #24.20
        .align    16,0x90
..___tag_value_add_external.3:                                  #
                                # LOE
# mark_end;
	.type	add_external,@function
	.size	add_external,.-add_external
	.data
# -- End  add_external
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
	.8byte ..___tag_value_add_external.1
	.8byte ..___tag_value_add_external.3-..___tag_value_add_external.1
# End
