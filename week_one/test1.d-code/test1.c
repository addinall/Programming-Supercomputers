#include <stdio.h>
// CAPTAIN SLOG
// vim: set expandtab tabstop=4 shiftwidth=4 autoindent smartindent:
// File         : test1.c 
// System       : Charles Stuart University - Supercomputing Masters
// Date         : June 24 2015
// Author       : Mark Addinall
// Synopsis     : Charles Stuart University have offered a Master
//                course in the subject of Programming Supercomputers.
//                It is a hands on course and these programs are
//                part of the labs and quizzes and exam.  
//                We are working on Tulip, the fastest computer in
//                Australia.
//              
//                This file is the initial lab file supplied by CSU/SGI
//                MODIFIED as per Lab1. Part 3.
//                Add an EXTERNAL routine to be linked as an .o object deck.
//                This is a test of compiler operands to see what
//                happens to the call to the internal function
//                add_internal at different optimisation levels.
//
// -------------------------------
#define N 1000000

double add_internal(double a, double b) {
    return(a + b);
}

double add_external(double a, double b);

int main(int argc, char *argv[]){

    double sum, aa[N], bb[N], cc[N], dd[N], ee[N];
    int i;

    printf("Hello World!\n");

    for(i=0; i<N; i++){
        aa[i] = (double) i;
    }

    for(i=0; i<N; i++){
        bb[i] = (double) (2*i);
    }

    for(i=0; i<N; i++){
        cc[i] = 1.0;
    }

    for(i=0; i<N; i++){
        cc[i] = aa[i] + bb[i];
    }

    printf("cc = %f\n",cc[2]);

    for (i=0; i<N; i++) {
        dd[i] = add_internal((aa[i]*2), bb[i]);
    }

    for (i=0; i<N; i++) {
        ee[i] = add_external((aa[i]*2), bb[i]/3);
    }

    sum = 0.0;

    for(i=0; i<N; i++){
        sum += cc[i];
    }

    printf("sum cc = %f\n",sum);

    sum = 0.0;

    for(i=0; i<N; i++){
        sum += dd[i];
    }

    printf("sum dd = %f\n",sum);

    sum = 0.0;

    for(i=0; i<N; i++){
        sum += ee[i];
    }

    printf("sum ee = %f\n",sum);

    return 0;
}

