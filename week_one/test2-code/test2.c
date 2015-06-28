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
            // loop was not vectorized: vector dependence 
            // prevents vectorization
            //
            // a possible solution to this may be found
            // at https://software.intel.com/en-us/articles/fdiag15344
            // 
            // I got this message when compiling with
            //
            //  -unroll-agressive
            //
            //
            // ee[i][x] = add_external(aa[i][x]*2, bb[i][x]/3);
            //
            ee[i][x] = add_external(aa[i][x], bb[i][x]);
            //
            // I thought getting rid of the computation inside
            // the argument MAY cure the prevention of vectorisation
            // as per the Intel documentation mentioned.
            // I obvioulsy don't understand this well enough.
            //
            // Requirements for loop vectorization:
            //
            // • The loop must contain straight-line code (a single basic block). 
            // There should be no jumps or branches, but masked assignments are allowed, 
            // including if-then-else constructs that can be interpreted as masked assignments.
            // • The loop must be countable, i.e. the number of iterations must be known 
            // before the loop starts to execute, though it need not be known at compile 
            // time. Consequently, there must be no data-dependent exit conditions.
            // • There should be no backward loop-carried dependencies. For example, the loop 
            // must not require statement 2 of iteration 1 to be executed before statement 1 
            // of iteration 2 for correct results. This allows consecutive iterations of 
            // the original loop to be executed simultaneously in a single iteration of the 
            // unrolled, vectorized loop.
            //
            // OK (vectorizable):  a[i-1] is always computed before it is used:
            //
            // for (i=1; i<MAX; i++) {
            // 
            //    a[i] = b[i] + c[i]
            //    
            //    d[i] = e[i] – a[i-1]
            //  }
            //
            //  Not OK (unvectorizable): a[i-1] might be needed before it has been computed:
            //
            //  for (i=1; i<MAX; i++) {
            // 
            //     d[i] = e[i] – a[i-1]
            //
            //     a[i] = b[i] + c[i]
            //  }
            // • There should be no special operators and no function or subroutine calls, 
            // unless these are inlined, either manually or automatically by the compiler, 
            // or they are SIMD (vectorized) functions. Intrinsic math functions such as 
            // sin(), log(), fmax(), etc. are allowed, since the compiler runtime library 
            // contains SIMD (vectorized) versions of these functions. See the comments 
            // section for a more extensive list.
            //
            // • If a loop is part of a loop nest, it should normally be the inner loop. 
            // Outer loops can be parallelized using OpenMP or autoparallelization (–parallel), 
            // but they can only rarely be auto-vectorized, unless the compiler is able either to 
            // fully unroll the inner loop, or to interchange the inner and outer loops. 
            // (Additional high level loop transformations such as these may require –O3. 
            // This option is available for both Intel® and non-Intel microprocessors but it 
            // may result in more optimizations for Intel microprocessors than for non-Intel 
            // microprocessors). The SIMD pragma or directive can be used to ask the compiler 
            // to vectorize an outer loop. See 
            // http://software.intel.com/en-us/articles/requirements-for-vectorizing-loops-with-pragma-simd 
            // for more information about what sort of loops can be vectorized using #pragma simd, 
            // !DIR$ SIMD or the OpenMP 4.0 equivalents.
            //
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

