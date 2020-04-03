%{ 
#include<stdio.h> 
#include<stdlib.h> 
int yylex();
int yyerror();
%}  
%token A B P Q C G H I
%% 
srt: R'\n' {printf("Grammar accepted is p^nq^n, n>0\n");return 0;}|
S'\n' {printf("Grammar accepted is a^nb, n>0\n");return 0;}|
E'\n' {printf("Grammar accepted is cg^n, n>0\n");return 0;}|
T'\n' {printf("Grammar accepted is hi^nh, n>0\n");return 0;}
S:X B
X:X A
|
;
R:P R Q
|
; 
E:C F
F:F G
|
;
T:H Z H
Z:Z I
|
;
%% 
int yyerror() 
 { 
  printf("Does not match any grammar\n"); 
  exit(0); 
 }   
int main() 
 { 
  int ch;
  printf("enter according to grammar\n 1.a^nb,n>0\n 2.p^nq^n,n>0\n 3.cg^n, n>0\n 4.hi^nh, n>0\n"); 
  printf("enter the string\n");
  yyparse(); 
 } 
