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
  | REC
  | INTV of (int)
  | ID of (Syntax.id)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Syntax
# 29 "parser.ml"
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
  275 (* REC *);
    0|]

let yytransl_block = [|
  276 (* INTV *);
  277 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\002\000\002\000\002\000\002\000\
\006\000\004\000\005\000\005\000\008\000\008\000\009\000\009\000\
\010\000\010\000\011\000\011\000\012\000\012\000\013\000\013\000\
\013\000\013\000\013\000\003\000\007\000\000\000"

let yylen = "\002\000\
\002\000\005\000\009\000\001\000\001\000\001\000\001\000\001\000\
\010\000\006\000\003\000\001\000\003\000\001\000\003\000\001\000\
\003\000\001\000\003\000\001\000\002\000\001\000\001\000\001\000\
\001\000\001\000\003\000\006\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\024\000\025\000\000\000\000\000\
\023\000\026\000\030\000\000\000\004\000\005\000\006\000\007\000\
\008\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\
\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\
\000\000\000\000\000\000\021\000\000\000\000\000\027\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\029\000\000\000\000\000\
\000\000\000\000\002\000\000\000\000\000\028\000\000\000\010\000\
\000\000\000\000\000\000\000\000\000\000\003\000\000\000\009\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\019\000\020\000\021\000\022\000\023\000"

let yysindex = "\003\000\
\002\255\000\000\012\255\012\255\000\000\000\000\245\254\240\254\
\000\000\000\000\000\000\006\255\000\000\000\000\000\000\000\000\
\000\000\023\255\007\255\010\255\027\255\030\255\000\000\015\255\
\036\255\031\255\024\255\028\255\029\255\000\000\030\255\030\255\
\030\255\030\255\030\255\000\000\034\255\032\255\000\000\012\255\
\033\255\012\255\012\255\007\255\052\255\010\255\027\255\030\255\
\042\255\012\255\048\255\044\255\003\255\000\000\049\255\051\255\
\012\255\055\255\000\000\012\255\058\255\000\000\063\255\000\000\
\064\255\012\255\012\255\004\255\075\255\000\000\012\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\050\255\147\255\123\255\095\255\067\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\157\255\120\255\137\255\109\255\081\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\253\255\000\000\000\000\000\000\000\000\000\000\061\000\
\063\000\062\000\069\000\072\000\236\255"

let yytablesize = 172
let yytable = "\025\000\
\026\000\036\000\003\000\001\000\029\000\059\000\070\000\027\000\
\030\000\028\000\004\000\033\000\003\000\005\000\006\000\007\000\
\034\000\060\000\071\000\008\000\004\000\009\000\010\000\005\000\
\006\000\024\000\031\000\036\000\032\000\008\000\003\000\009\000\
\010\000\037\000\035\000\038\000\051\000\039\000\053\000\054\000\
\040\000\005\000\006\000\042\000\041\000\043\000\056\000\050\000\
\052\000\009\000\010\000\012\000\012\000\062\000\049\000\031\000\
\064\000\055\000\057\000\012\000\012\000\058\000\068\000\069\000\
\012\000\060\000\061\000\072\000\020\000\020\000\020\000\020\000\
\020\000\020\000\020\000\063\000\020\000\020\000\065\000\066\000\
\067\000\020\000\019\000\019\000\019\000\019\000\019\000\019\000\
\019\000\071\000\019\000\019\000\045\000\044\000\046\000\019\000\
\018\000\018\000\018\000\018\000\018\000\018\000\047\000\000\000\
\018\000\018\000\048\000\000\000\000\000\018\000\017\000\017\000\
\017\000\017\000\017\000\017\000\000\000\000\000\017\000\017\000\
\000\000\011\000\011\000\017\000\016\000\016\000\016\000\016\000\
\016\000\011\000\011\000\000\000\016\000\016\000\011\000\000\000\
\000\000\016\000\015\000\015\000\015\000\015\000\015\000\000\000\
\000\000\000\000\015\000\015\000\014\000\014\000\014\000\015\000\
\014\000\000\000\000\000\000\000\014\000\014\000\013\000\013\000\
\013\000\014\000\013\000\000\000\000\000\000\000\013\000\013\000\
\000\000\000\000\000\000\013\000"

let yycheck = "\003\000\
\004\000\022\000\001\001\001\000\021\001\003\001\003\001\019\001\
\003\001\021\001\009\001\005\001\001\001\012\001\013\001\014\001\
\007\001\015\001\015\001\018\001\009\001\020\001\021\001\012\001\
\013\001\014\001\004\001\048\000\006\001\018\001\001\001\020\001\
\021\001\019\001\008\001\021\001\040\000\002\001\042\000\043\000\
\010\001\012\001\013\001\016\001\021\001\017\001\050\000\016\001\
\016\001\020\001\021\001\002\001\003\001\057\000\021\001\004\001\
\060\000\016\001\011\001\010\001\011\001\018\001\066\000\067\000\
\015\001\015\001\018\001\071\000\002\001\003\001\004\001\005\001\
\006\001\007\001\008\001\021\001\010\001\011\001\021\001\017\001\
\017\001\015\001\002\001\003\001\004\001\005\001\006\001\007\001\
\008\001\015\001\010\001\011\001\032\000\031\000\033\000\015\001\
\002\001\003\001\004\001\005\001\006\001\007\001\034\000\255\255\
\010\001\011\001\035\000\255\255\255\255\015\001\002\001\003\001\
\004\001\005\001\006\001\007\001\255\255\255\255\010\001\011\001\
\255\255\002\001\003\001\015\001\002\001\003\001\004\001\005\001\
\006\001\010\001\011\001\255\255\010\001\011\001\015\001\255\255\
\255\255\015\001\002\001\003\001\004\001\005\001\006\001\255\255\
\255\255\255\255\010\001\011\001\002\001\003\001\004\001\015\001\
\006\001\255\255\255\255\255\255\010\001\011\001\002\001\003\001\
\004\001\015\001\006\001\255\255\255\255\255\255\010\001\011\001\
\255\255\255\255\255\255\015\001"

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
  REC\000\
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
# 19 "parser.mly"
                  ( Exp _1 )
# 193 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 20 "parser.mly"
                            ( Decl (_2, _4) )
# 201 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : Syntax.id) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : Syntax.id) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 21 "parser.mly"
                                             (RecDecl (_3,_6,_8))
# 210 "parser.ml"
               : Syntax.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'IfExpr) in
    Obj.repr(
# 24 "parser.mly"
           ( _1 )
# 217 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LetExpr) in
    Obj.repr(
# 25 "parser.mly"
            ( _1)
# 224 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LTExpr) in
    Obj.repr(
# 26 "parser.mly"
           ( _1 )
# 231 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'LetRecExpr) in
    Obj.repr(
# 27 "parser.mly"
               ( _1 )
# 238 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'FunExpr) in
    Obj.repr(
# 28 "parser.mly"
            ( _1 )
# 245 "parser.ml"
               : 'Expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 7 : Syntax.id) in
    let _6 = (Parsing.peek_val __caml_parser_env 4 : Syntax.id) in
    let _8 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _10 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 31 "parser.mly"
                                          (LetRecExp(_3,_6,_8,_10) )
# 255 "parser.ml"
               : 'LetRecExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 34 "parser.mly"
                         ( LetExp (_2, _4, _6) )
# 264 "parser.ml"
               : 'LetExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 40 "parser.mly"
                   ( BinOp (Lt, _1, _3) )
# 272 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'PExpr) in
    Obj.repr(
# 41 "parser.mly"
          ( _1 )
# 279 "parser.ml"
               : 'LTExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 44 "parser.mly"
                     ( BinOp (Plus, _1, _3) )
# 287 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'MExpr) in
    Obj.repr(
# 45 "parser.mly"
          ( _1 )
# 294 "parser.ml"
               : 'PExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'MExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 48 "parser.mly"
                      ( BinOp (Mult, _1, _3) )
# 302 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ANExpr) in
    Obj.repr(
# 49 "parser.mly"
           ( _1 )
# 309 "parser.ml"
               : 'MExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ANExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 52 "parser.mly"
                     ( BinOp (AND, _1, _3) )
# 317 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'OExpr) in
    Obj.repr(
# 53 "parser.mly"
          ( _1 )
# 324 "parser.ml"
               : 'ANExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'OExpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 56 "parser.mly"
                     ( BinOp (OR, _1, _3) )
# 332 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AppExpr) in
    Obj.repr(
# 57 "parser.mly"
            ( _1 )
# 339 "parser.ml"
               : 'OExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'AppExpr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 60 "parser.mly"
                  ( AppExp (_1, _2) )
# 347 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AExpr) in
    Obj.repr(
# 61 "parser.mly"
          ( _1 )
# 354 "parser.ml"
               : 'AppExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 64 "parser.mly"
         ( ILit _1 )
# 361 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
         ( BLit true )
# 367 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
          ( BLit false )
# 373 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Syntax.id) in
    Obj.repr(
# 67 "parser.mly"
       ( Var _1 )
# 380 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Expr) in
    Obj.repr(
# 68 "parser.mly"
                       ( _2 )
# 387 "parser.ml"
               : 'AExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'Expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 71 "parser.mly"
                                ( IfExp (_2, _4, _6) )
# 396 "parser.ml"
               : 'IfExpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Syntax.id) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'Expr) in
    Obj.repr(
# 74 "parser.mly"
                       ( FunExp (_2,_4))
# 404 "parser.ml"
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
