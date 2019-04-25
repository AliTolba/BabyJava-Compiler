digit [0-9];
charac [A-Z a-z];
identifier [a-z];
%{
#include<stdio.h>
#include "y.tab.h"
%}





%%


"const" return CONST;
"+" return PLUS;
"-" return MINUS;
"/" return DIVIDED;
"int" return INT;
"char" return CHAR;
"float" return FLOAT;
"bool" return BOOL;
"*" return MUL;
"and" return AND;
"not" return NOT;
"nor" return NOR;
"xor" return XOR;
"or" return OR;
"nand" return NAND;
"xnor" return XNOR;
"if" return IF;
"else" return ELSE;
"while" return WHILE;
"do" return DOWHILE;
"for" return FOR;
"case" return CASE;
"switch" return SWITCH;
"break" return BREAK;
"true" return TRUE;
"false" return FALSE;
[0-9]+   {yylval.ival=atoi(yytext); return INT_VAL;};
[a-z] {yylval.SymIndex=*yytext-'a'; return ID;};
\'[A-Z a-z]\' {yylval.cval=*(yytext+1)-'a'; return C_VAL;}
[0-9]+\.[0-9]+ {yylval.fval=atof(yytext); return FLOAT_VAL;};
"!" return C_NOT;
"||" return C_OR;
"&&" return C_AND;
"{" return BRACEOPEN;
"}" return BRACECLOSE;
"(" return BRACKETOPEN;
")" return BRACKETCLOSE; 
"=" return ASSIGN;
"==" return EQUAL;
">=" return GTEQ;
">" return GT;
"<=" return LTEQ;
"<" return LT;
"!=" return NOTEQUAL;
";" return SEMICOL;
":" return COLON;
[ \t\n]+		 ;       /* ignore whitespace */
.						yyerror("Unexpected character!\n");

%%

int yywrap()
{
	return 1;
}
