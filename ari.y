%{
#include<stdio.h>
int valid=1;
int yylex();
int yyerror();
%}
%token num id op
%%
start:id'='s;|s;
s:id x
 |num x
 |'-' num x
 |'('s')'x
 |
 ;
x:op s
 |'-'s
 |
 ;
%%
int yyerror()
{
valid=0;
printf("\ninvalid");
return 0;
}
int main()
{
printf("Enter the expression");
yyparse();
if(valid)
{
printf("valid");
}
}

