type token =
  | LPAREN
  | RPAREN
  | SEMISEMI
  | PLUS
  | MULT
  | LT
  | AND
  | OR
  | IF
  | THEN
  | ELSE
  | TRUE
  | FALSE
  | LET
  | IN
  | EQ
  | RARROW
  | FUN
  | INTV of (int)
  | ID of (Syntax.id)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Syntax
# 28 "parser.ml"
let yytransl_const = [|
  257 (* LPAREN *);
  258 (* RPAREN *);
  259 (* SEMISEMI *);
  260 (* PLUS *);
  261 (* MULT *);
  262 (* LT *);
  263 (* AND *);
  264 (* OR *);
  265 (* IF *);
  266 (* THEN *);
  267 (* ELSE *);
  268 (* TRUE *);
  269 (* FALSE *);
  270 (* LET *);
  271 (* IN *);
  272 (* EQ *);
  273 (* RARROW *);
  274 (* FUN *);
    0|]

let yytransl_block = [|
  275 (* INTV *);
  276 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\004\000\005\000\005\000\
\006\000\006\000\007\000\007\000\008\000\008\000\009\000\009\000\
\010\000\010\000\011\000\011\000\011\000\011\000\011\000\003\000\
\000\000"

let yylen = "\002\000\
\002\000\005\000\001\000\001\000\001\000\006\000\003\000\001\000\
\003\000\001\000\003\000\001\000\003\000\001\000\003\000\001\000\
\002\000\001\000\001\000\001\000\001\000\001\000\003\000\006\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\020\000\021\000\000\000\019\000\
\022\000\025\000\000\000\003\000\004\000\005\000\000\000\000\000\
\000\000\000\000\000\000\018\000\000\000\000\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\
\023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\002\000\000\000\024\000\
\006\000"

let yydgoto = "\002\000\
\010\000\011\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\019\000\020\000"

let yysindex = "\003\000\
\002\255\000\000\016\255\016\255\000\000\000\000\245\254\000\000\
\000\000\000\000\009\255\000\000\000\000\000\000\001\255\005\255\
\006\255\025\255\007\255\000\000\004\255\032\255\027\255\023\255\
\000\000\007\255\007\255\007\255\007\255\007\255\000\000\024\255\
\000\000\016\255\016\255\005\255\037\255\006\255\025\255\007\255\
\016\255\041\255\003\255\028\255\016\255\000\000\016\255\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\096\255\123\255\
\099\255\071\255\043\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\133\255\139\255\113\255\085\255\057\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\253\255\000\000\000\000\000\000\028\000\030\000\029\000\
\037\000\039\000\239\255"

let yytablesize = 154
let yytable = "\022\000\
\023\000\031\000\003\000\001\000\026\000\046\000\027\000\003\000\
\024\000\028\000\004\000\025\000\029\000\005\000\006\000\007\000\
\003\000\047\000\005\000\006\000\008\000\009\000\031\000\032\000\
\004\000\008\000\009\000\005\000\006\000\021\000\042\000\043\000\
\030\000\033\000\008\000\009\000\034\000\044\000\035\000\041\000\
\026\000\048\000\047\000\049\000\016\000\016\000\016\000\016\000\
\016\000\016\000\016\000\045\000\016\000\016\000\037\000\036\000\
\038\000\016\000\015\000\015\000\015\000\015\000\015\000\015\000\
\015\000\039\000\015\000\015\000\040\000\000\000\000\000\015\000\
\014\000\014\000\014\000\014\000\014\000\014\000\000\000\000\000\
\014\000\014\000\000\000\000\000\000\000\014\000\013\000\013\000\
\013\000\013\000\013\000\013\000\000\000\000\000\013\000\013\000\
\000\000\008\000\008\000\013\000\012\000\012\000\012\000\012\000\
\012\000\008\000\008\000\000\000\012\000\012\000\008\000\000\000\
\000\000\012\000\011\000\011\000\011\000\011\000\011\000\000\000\
\000\000\000\000\011\000\011\000\010\000\010\000\010\000\011\000\
\010\000\000\000\000\000\000\000\010\000\010\000\009\000\009\000\
\009\000\010\000\009\000\000\000\007\000\007\000\009\000\009\000\
\000\000\000\000\000\000\009\000\007\000\007\000\000\000\000\000\
\000\000\007\000"

let yycheck = "\003\000\
\004\000\019\000\001\001\001\000\004\001\003\001\006\001\001\001\
\020\001\005\001\009\001\003\001\007\001\012\001\013\001\014\001\
\001\001\015\001\012\001\013\001\019\001\020\001\040\000\020\001\
\009\001\019\001\020\001\012\001\013\001\014\001\034\000\035\000\
\008\001\002\001\019\001\020\001\010\001\041\000\016\001\016\001\
\004\001\045\000\015\001\047\000\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\011\001\010\001\011\001\027\000\026\000\
\028\000\015\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\029\000\010\001\011\001\030\000\255\255\255\255\015\001\
\002\001\003\001\004\001\005\001\006\001\007\001\255\255\255\255\
\010\001\011\001\255\255\255\255\255\255\015\001\002\001\003\001\
\004\001\005\001\006\001\007\001\255\255\255\255\010\001\011\001\
\255\255\002\001\003\001\015\001\002\001\003\001\004\001\005\001\
\006\001\010\001\011\001\255\255\010\001\011\001\015\001\255\255\
\255\255\015\001\002\001\003\001\004\001\005\001\006\001\255\255\
\255\255\255\255\010\001\011\001\002\001\003\001\004\001\015\001\
\006\001\255\255\255\255\255\255\010\001\011\001\002\001\003\001\
\004\001\015\001\006\001\255\255\002\001\003\001\010\001\011\001\
\255\255\255\255\255\255\015\001\010\001\011\001\255\255\255\255\
\255\255\015\001"

let yynames_const = "\
  LPAREN\000\
  RPAREN\000\
  SEMISEMI\000\
  PLUS\000\
  MULT\000\
  LT\000\
  AND\000\
  OR\000\
  IF\000\
  THEN\000\
  ELSE\000\
  TRUE\000\
  FALSE\000\
  LET\000\
  IN\000\
  EQ\000\
  RARROW\000\
  FUN\000\
  "

let yynames_block = "\
  INTV\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 18 "parser.mly"
                  ( Exp _1 )
# 180 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 19 "parser.mly"
                            ( Decl (_2, _4) )
# 188 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'IfExpr) in
    Obj.repr(
# 22 "parser.mly"
           ( _1 )
# 195 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LetExpr) in
    Obj.repr(
# 23 "parser.mly"
            ( _1)
# 202 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LTExpr) in
    Obj.repr(
# 24 "parser.mly"
           ( _1 )
# 209 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 27 "parser.mly"
                         ( LetExp (_2, _4, _6) )
# 218 "parser.ml"
               : 'LetExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 32 "parser.mly"
                   ( BinOp (Lt, _1, _3) )
# 226 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 33 "parser.mly"
          ( _1 )
# 233 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 36 "parser.mly"
                     ( BinOp (Plus, _1, _3) )
# 241 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 37 "parser.mly"
          ( _1 )
# 248 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'MExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 40 "parser.mly"
                      ( BinOp (Mult, _1, _3) )
# 256 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 41 "parser.mly"
           ( _1 )
# 263 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ANExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 44 "parser.mly"
                     ( BinOp (AND, _1, _3) )
# 271 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 45 "parser.mly"
          ( _1 )
# 278 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'OExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 48 "parser.mly"
                     ( BinOp (OR, _1, _3) )
# 286 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 49 "parser.mly"
            ( _1 )
# 293 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'AppExpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 52 "parser.mly"
                  ( AppExp (_1, _2) )
# 301 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 53 "parser.mly"
          ( _1 )
# 308 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 56 "parser.mly"
         ( ILit _1 )
# 315 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
         ( BLit true )
# 321 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
          ( BLit false )
# 327 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Syntax.id) in
    Obj.repr(
# 59 "parser.mly"
       ( Var _1 )
# 334 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 60 "parser.mly"
                       ( _2 )
# 341 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'Expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 63 "parser.mly"
                                ( IfExp (_2, _4, _6) )
# 350 "parser.ml"
               : 'IfExpr))
(* Entry toplevel *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.program)
