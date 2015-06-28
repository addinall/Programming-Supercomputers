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
//                This is the final modification required in Lab 1.
//                Change the single dimension arrays into multi
//                dimensional arrays and (I presume) nest the
//                compute loops.
//
//                We then have a look at the opt reports and try
//                to coerce the compiler into in-folding the nested loops.
//                At least I think that is what we are doing.  ;-)
//
// -------------------------------

#define N 1000000
#define P 2

double add_internal(double a, double b) {
    return(a + b);
}

double add_external(double a, double b);

int main(int argc, char *argv[]){

    double sum, aa[N][P], bb[N][P], cc[N][P], dd[N][P], ee[N][P];
    int i,x;

    printf("Hello World!\n");

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            aa[i][x] = (double) i;
        }
    }

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            bb[i][x] = (double) (2*i);
        }
    }

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            cc[i][x] = 1.0;
        }
    }

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            cc[i][x] = aa[i][x] + bb[i][x];
        }
    }

    printf("cc = %f\n",cc[2][2]);   // don't ask why!

    for (i=0; i<N; i++) {
        for(x=0; x<P; x++){
            dd[i][x] = add_internal((aa[i][x]*2), bb[i][x]);
        }
    }

    for (i=0; i<N; i++) {
        for(x=0; x<P; x++){
            ee[i][x] = add_external(aa[i][x]*2, bb[i][x]/3);
        }
    }

    sum = 0.0;

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            sum += cc[i][x];
        }
    }

    printf("sum cc = %f\n",sum);

    sum = 0.0;

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            sum += dd[i][x];
        }
    }

    printf("sum dd = %f\n",sum);

    sum = 0.0;

    for(i=0; i<N; i++){
        for(x=0; x<P; x++){
            sum += ee[i][x];
        }
    }

    printf("sum ee = %f\n",sum);

    return 0;
}

