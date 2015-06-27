#test1-code
###Mark Addinall - June 2015

###Programming Supercomputers Master class - CSU
---

This is the initial code presented in lab_one.
MODIFIED as per Lab 1. Part 2.

2: Modify test1.c
- include an internal routine 
    `(double) add_internal((double) a, (double(b))` 
which returns (a + b).
- add another loop in the main program which calls add_internal() to perform the addition.
- Investigate which optimisation levels (O0, O1, O2, O3) inline add_internal.
- What effect does this have on the vectorization of this loop?
- Investigate compiler options and compiler directives to force inlining or to inhibit inlining this call.
