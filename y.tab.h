
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     FLOAT_VAL = 258,
     C_VAL = 259,
     INT_VAL = 260,
     bool_var = 261,
     INT = 262,
     CHAR = 263,
     FLOAT = 264,
     BOOL = 265,
     CONST = 266,
     ID = 267,
     ASSIGN = 268,
     C_NOT = 269,
     C_OR = 270,
     C_AND = 271,
     NOTEQUAL = 272,
     LT = 273,
     LTEQ = 274,
     GT = 275,
     GTEQ = 276,
     EQUAL = 277,
     XNOR = 278,
     NAND = 279,
     OR = 280,
     XOR = 281,
     NOR = 282,
     NOT = 283,
     AND = 284,
     MINUS = 285,
     PLUS = 286,
     DIVIDED = 287,
     MUL = 288,
     IFX = 289,
     ELSE = 290,
     IF = 291,
     WHILE = 292,
     DOWHILE = 293,
     FOR = 294,
     CASE = 295,
     SWITCH = 296,
     BREAK = 297,
     TRUE = 298,
     FALSE = 299,
     BRACEOPEN = 300,
     BRACECLOSE = 301,
     BRACKETOPEN = 302,
     BRACKETCLOSE = 303,
     SEMICOL = 304,
     COLON = 305
   };
#endif
/* Tokens.  */
#define FLOAT_VAL 258
#define C_VAL 259
#define INT_VAL 260
#define bool_var 261
#define INT 262
#define CHAR 263
#define FLOAT 264
#define BOOL 265
#define CONST 266
#define ID 267
#define ASSIGN 268
#define C_NOT 269
#define C_OR 270
#define C_AND 271
#define NOTEQUAL 272
#define LT 273
#define LTEQ 274
#define GT 275
#define GTEQ 276
#define EQUAL 277
#define XNOR 278
#define NAND 279
#define OR 280
#define XOR 281
#define NOR 282
#define NOT 283
#define AND 284
#define MINUS 285
#define PLUS 286
#define DIVIDED 287
#define MUL 288
#define IFX 289
#define ELSE 290
#define IF 291
#define WHILE 292
#define DOWHILE 293
#define FOR 294
#define CASE 295
#define SWITCH 296
#define BREAK 297
#define TRUE 298
#define FALSE 299
#define BRACEOPEN 300
#define BRACECLOSE 301
#define BRACKETOPEN 302
#define BRACKETCLOSE 303
#define SEMICOL 304
#define COLON 305




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 18 "calc.y"

  float fval;  // data types for attributes within grammar
  char cval;
  int ival;
  char SymIndex; //index of the identifier in the symbol table  



/* Line 1676 of yacc.c  */
#line 161 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


