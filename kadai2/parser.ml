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
\001\000\001\000\002\000\002\000\002\000\002\000\004\000\005\000\
\005\000\007\000\007\000\008\000\008\000\009\000\009\000\010\000\
\010\000\011\000\011\000\012\000\012\000\012\000\012\000\012\000\
\003\000\006\000\000\000"

let yylen = "\002\000\
\002\000\005\000\001\000\001\000\001\000\001\000\006\000\003\000\
\001\000\003\000\001\000\003\000\001\000\003\000\001\000\003\000\
\001\000\002\000\001\000\001\000\001\000\001\000\001\000\003\000\
\006\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\021\000\022\000\000\000\000\000\
\020\000\023\000\027\000\000\000\003\000\004\000\005\000\006\000\
\000\000\000\000\000\000\000\000\000\000\019\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\018\000\000\000\024\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\
\000\000\000\000\002\000\000\000\025\000\007\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\019\000\020\000\021\000\022\000"

let yysindex = "\003\000\
\002\255\000\000\032\255\032\255\000\000\000\000\244\254\245\254\
\000\000\000\000\000\000\007\255\000\000\000\000\000\000\000\000\
\001\255\008\255\010\255\018\255\011\255\000\000\255\254\025\255\
\019\255\012\255\015\255\000\000\011\255\011\255\011\255\011\255\
\011\255\000\000\021\255\000\000\032\255\032\255\032\255\008\255\
\034\255\010\255\018\255\011\255\032\255\028\255\003\255\000\000\
\033\255\032\255\000\000\032\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\104\255\131\255\107\255\079\255\051\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\141\255\
\147\255\121\255\093\255\065\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\253\255\000\000\000\000\000\000\000\000\010\000\014\000\
\029\000\031\000\032\000\237\255"

let yytablesize = 162
let yytable = "\024\000\
\025\000\034\000\003\000\001\000\029\000\051\000\030\000\026\000\
\027\000\028\000\004\000\003\000\031\000\005\000\006\000\007\000\
\032\000\052\000\035\000\008\000\009\000\010\000\005\000\006\000\
\034\000\033\000\036\000\038\000\037\000\009\000\010\000\039\000\
\003\000\046\000\047\000\048\000\045\000\029\000\050\000\041\000\
\004\000\049\000\040\000\005\000\006\000\023\000\053\000\052\000\
\054\000\008\000\009\000\010\000\017\000\017\000\017\000\017\000\
\017\000\017\000\017\000\042\000\017\000\017\000\043\000\000\000\
\044\000\017\000\016\000\016\000\016\000\016\000\016\000\016\000\
\016\000\000\000\016\000\016\000\000\000\000\000\000\000\016\000\
\015\000\015\000\015\000\015\000\015\000\015\000\000\000\000\000\
\015\000\015\000\000\000\000\000\000\000\015\000\014\000\014\000\
\014\000\014\000\014\000\014\000\000\000\000\000\014\000\014\000\
\000\000\009\000\009\000\014\000\013\000\013\000\013\000\013\000\
\013\000\009\000\009\000\000\000\013\000\013\000\009\000\000\000\
\000\000\013\000\012\000\012\000\012\000\012\000\012\000\000\000\
\000\000\000\000\012\000\012\000\011\000\011\000\011\000\012\000\
\011\000\000\000\000\000\000\000\011\000\011\000\010\000\010\000\
\010\000\011\000\010\000\000\000\008\000\008\000\010\000\010\000\
\000\000\000\000\000\000\010\000\008\000\008\000\000\000\000\000\
\000\000\008\000"

let yycheck = "\003\000\
\004\000\021\000\001\001\001\000\004\001\003\001\006\001\020\001\
\020\001\003\001\009\001\001\001\005\001\012\001\013\001\014\001\
\007\001\015\001\020\001\018\001\019\001\020\001\012\001\013\001\
\044\000\008\001\002\001\016\001\010\001\019\001\020\001\017\001\
\001\001\037\000\038\000\039\000\016\001\004\001\011\001\030\000\
\009\001\045\000\029\000\012\001\013\001\014\001\050\000\015\001\
\052\000\018\001\019\001\020\001\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\031\000\010\001\011\001\032\000\255\255\
\033\000\015\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\255\255\010\001\011\001\255\255\255\255\255\255\015\001\
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
# 182 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 19 "parser.mly"
                            ( Decl (_2, _4) )
# 190 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'IfExpr) in
    Obj.repr(
# 22 "parser.mly"
           ( _1 )
# 197 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LetExpr) in
    Obj.repr(
# 23 "parser.mly"
            ( _1)
# 204 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LTExpr) in
    Obj.repr(
# 24 "parser.mly"
           ( _1 )
# 211 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'FunExpr) in
    Obj.repr(
# 25 "parser.mly"
            ( _1 )
# 218 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 28 "parser.mly"
                         ( LetExp (_2, _4, _6) )
# 227 "parser.ml"
               : 'LetExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 33 "parser.mly"
                   ( BinOp (Lt, _1, _3) )
# 235 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 34 "parser.mly"
          ( _1 )
# 242 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 37 "parser.mly"
                     ( BinOp (Plus, _1, _3) )
# 250 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 38 "parser.mly"
          ( _1 )
# 257 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'MExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 41 "parser.mly"
                      ( BinOp (Mult, _1, _3) )
# 265 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 42 "parser.mly"
           ( _1 )
# 272 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ANExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 45 "parser.mly"
                     ( BinOp (AND, _1, _3) )
# 280 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 46 "parser.mly"
          ( _1 )
# 287 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'OExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 49 "parser.mly"
                     ( BinOp (OR, _1, _3) )
# 295 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 50 "parser.mly"
            ( _1 )
# 302 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'AppExpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 53 "parser.mly"
                  ( AppExp (_1, _2) )
# 310 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 54 "parser.mly"
          ( _1 )
# 317 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 57 "parser.mly"
         ( ILit _1 )
# 324 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
         ( BLit true )
# 330 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
          ( BLit false )
# 336 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Syntax.id) in
    Obj.repr(
# 60 "parser.mly"
       ( Var _1 )
# 343 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 61 "parser.mly"
                       ( _2 )
# 350 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'Expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 64 "parser.mly"
                                ( IfExp (_2, _4, _6) )
# 359 "parser.ml"
               : 'IfExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 67 "parser.mly"
                       ( FunExp (_2,_4))
# 367 "parser.ml"
               : 'FunExpr))
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
