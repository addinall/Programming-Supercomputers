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
// -------------------------------
#define N 1000000

int main(int argc, char *argv[]){
double sum, aa[N], bb[N], cc[N];
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

   sum = 0.0;
   for(i=0; i<N; i++){
      sum += cc[i];
   }
   printf("sum = %f\n",sum);

   return 0;
}

