open Syntax
open Eval
open Printf
open Str
open Typing

let rec read_eval_print env tyenv =
try 
  let filename = Sys.argv.(1) in 
 (*前処理の段階で正規表現で包んでしまってすべて消してしまえば良い？ -> 文字列無いのコメントは困るけど、とりあえずはそれはなしで。*)
 (*とりあえず詰まったので先に進む。後、一度ファイルを読み込むと毎回評価されてしまうという問題も直さないと行けない。*)
  let fin = open_in filename in
  let rec batch env tyenv=
    let line = input_line fin in
    let bdecl = Parser.toplevel Lexer.main (Lexing.from_string line) in 
	let ty = ty_decl tyenv bdecl in
	  let (id, newenv, v) = eval_decl env bdecl in
        Printf.printf "val %s = " id;
		pp_ty ty;
		print_string " = ";
		pp_val v;
		print_newline();
		batch newenv tyenv
  in 
    try batch env tyenv with End_of_file -> close_in fin;
with
  _ -> 
  print_string "# ";
  flush stdout;
try
  let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
  let ty = ty_decl tyenv decl in
  let (id, newenv, v) = eval_decl env decl in
    Printf.printf "val %s = " id;
	pp_ty ty;
	print_string " = ";
    pp_val v;
    print_newline();
    read_eval_print newenv tyenv
with 
  Eval.Error "Variable not bound"-> print_string "eval error\n";read_eval_print env tyenv
 |Parsing.Parse_error -> print_string "parse error\n";read_eval_print env tyenv
 (*|_ -> print_string "something is wrong\n";read_eval_print env*)

let initial_env =
  Environment.extend "i" (IntV 1)
    (Environment.extend "v" (IntV 5)
      (Environment.extend "x" (IntV 10) Environment.empty))

let initial_tyenv = 
  Environment.extend "i" TyInt
    (Environment.extend "v" TyInt
       (Environment.extend "x" TyInt Environment.empty))

let _ = read_eval_print initial_env initial_tyenv
