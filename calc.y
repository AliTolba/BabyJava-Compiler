%{
  #include <stdio.h>
  #include <stdlib.h>
  #include "CalcHeader.h"
  extern int yylex(); 
 /* float myScope=0;
  SymbolTable* MainSymbolTable;
  MainSymbolTable.level=0;
  MainSymbolTable.position=0;

  SymbolTable* CurrentSymbolTable=MainSymbolTable;
  */
  int whileindex=0;
%}



%union{
  float fval;  // data types for attributes within grammar
  char cval;
  int ival;
  char SymIndex; //index of the identifier in the symbol table  
}

%token <fval>FLOAT_VAL// %token for terminals
%token <cval>C_VAL
%token <ival> INT_VAL
%token <b> bool_var
%token INT
%token CHAR
%token FLOAT
%token BOOL
%token CONST
%token <symIndex>ID
%right ASSIGN
%left AND NOT NOR XOR OR NAND XNOR EQUAL GTEQ GT LTEQ LT NOTEQUAL C_AND C_OR C_NOT
%left PLUS MINUS
%left MUL DIVIDED
%nonassoc IFX
%nonassoc ELSE
%token IF
%token WHILE
%token DOWHILE
%token FOR
%token CASE
%token SWITCH
%token BREAK
%token TRUE
%token FALSE
%token BRACEOPEN
%token BRACECLOSE
%token BRACKETOPEN
%token BRACKETCLOSE 
%token ASSIGN
%token SEMICOL
%token COLON

%%

start:
	start stmt
	| /* empty */
	;
	

stmt:
	 SEMICOL						{printf("Matched SEMICOL dodododod \n");}
	|  expr2 SEMICOL  {printf("Matched Declaration Statment \n");}
	| CONST CHAR ID ASSIGN C_VAL SEMICOL        		{printf("Matched constant charchter declaration and assignment Statment dodododod \n");}
	| CHAR ID ASSIGN C_VAL SEMICOL 	{printf("Matched charchter declaration and assignment Statmentdodododod \n");}
	| ID ASSIGN C_VAL SEMICOL	{printf("Matched charchter assignment Statment dodododod \n");}
	| ID ASSIGN expr SEMICOL			{printf(" Matched int/float/bool assignment Statment dodododod \n"); }
	| INT ID ASSIGN expr SEMICOL		{printf("Matched int declaration and assignment Statment dodododod \n"); }
	| CONST INT ID ASSIGN expr SEMICOL  {printf("Matched constant int declaration and assignment Statment dodododod \n");}
	| FLOAT ID ASSIGN expr SEMICOL {printf("Matched float declaration and assignment Statment dodododod \n"); }
	| CONST FLOAT ID ASSIGN expr SEMICOL	{printf("Matched constant float declaration and assignment Statment dodododod \n");}
	| BOOL ID ASSIGN expr SEMICOL		{printf("Matched bool declaration and assignment Statment dodododod \n");}
	| CONST BOOL ID ASSIGN expr SEMICOL	{printf("Matched constant bool declaration and assignment Statment dodododod \n");}
	| while_stmt stmt			{printf("Matched While Statment dodododod \n"); }
	| DOWHILE stmt while_stmt	{printf("Matched Do While Statment dodododod \n");}
	| switch					{printf("Matched Switch Statment dodododod \n");}
	| for stmt					{printf("Matched For Statment dodododod \n");}
	| IF BRACKETOPEN expr BRACKETCLOSE stmt %prec IFX  		{printf("Matched IF Statment dodododod \n");}
    | IF BRACKETOPEN expr BRACKETCLOSE stmt ELSE stmt		{printf("Matched IFELSE Statment dodododod \n");}
	| BRACEOPEN stmt_list BRACECLOSE				{printf(" Matched statment list dodododod \n");}
	| BRACEOPEN BRACECLOSE 				{printf("Matched Braces {} dodododod");}
	
	
	
	;


expr2:
	INT ID 		
	| FLOAT ID 
	| CHAR ID 
	| BOOL ID  
;	

expr :
	
	 ID				{printf("Matched Identifier\n");}
	| FLOAT_VAL
	| INT_VAL
	| TRUE
	| FALSE
	| expr PLUS expr	{printf("Matched plus expr\n");}	
	| expr MINUS expr
	| expr C_AND expr {printf("Matched conditional and stmt \n");}
	| expr C_NOT expr
	|expr C_OR expr
	| expr AND expr
	| NOT expr
	| expr XOR expr
	| expr NOR expr
	| expr OR expr
	| expr NAND expr
	| expr XNOR expr
    | expr GTEQ expr
    | expr GT expr
    | expr LTEQ expr
    | expr LT expr
	| expr EQUAL expr
    | expr NOTEQUAL expr			
	| expr MUL expr
	| expr DIVIDED expr
	| BRACKETOPEN expr BRACKETCLOSE
	| MINUS expr
	
	;
for: 
    FOR BRACKETOPEN forfirst SEMICOL expr SEMICOL forfirst BRACKETCLOSE
    ;

while_stmt: 
    WHILE BRACKETOPEN expr BRACKETCLOSE
    ;
		
forfirst:
	ID ASSIGN expr
	|INT ID ASSIGN expr
    ;
	
switch:
	SWITCH BRACKETOPEN ID BRACKETCLOSE BRACEOPEN switchstmt
    ;
switchstmt:
	CASE values COLON stmt_list switchstmt
	| BRACECLOSE
	;
stmt_list:
    stmt              
    | stmt_list stmt      

    ;

values:
	INT_VAL             		 
	|FLOAT_VAL		
	|bool_var 		
	|C_VAL 		
	;
%%


int yyerror(char *msg){
  fprintf(stderr,"%s\n",msg);
  exit(1);
}

int main(void){
	while(!whileindex){
	yyparse();
	}
    printf("No syntax Errors.\n");
	return 0;
}
