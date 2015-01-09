open Syntax
open Eval
open Printf
open Str

(*let cat filename =
  let fin = open_in filename in
    let rec cat_sub () =
	    output_char stdout (input_char fin);
		    cat_sub ();
			  in
			      try cat_sub () with End_of_file -> close_in fin;
*)
let rec read_eval_print env =
try 
  let filename = Sys.argv.(1) in 
 (*前処理の段階で正規表現で包んでしまってすべて消してしまえば良い？ -> 文字列無いのコメントは困るけど、とりあえずはそれはなしで。*)
 (*とりあえず詰まったので先に進む。後、一度ファイルを読み込むと毎回評価されてしまうという問題も直さないと行けない。*)
  let fin = open_in filename in
  let rec batch env =
    let line = input_line fin in
    let bdecl = Parser.toplevel Lexer.main (Lexing.from_string line) in 
	  let (id, newenv, v) = eval_decl env bdecl in
        Printf.printf "val %s = " id;
		pp_val v;
		print_newline();
		batch newenv
  in 
    try batch env with End_of_file -> close_in fin;
with
  _ -> 
  print_string "# ";
  flush stdout;
try
  let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
  let (id, newenv, v) = eval_decl env decl in
    Printf.printf "val %s = " id;
    pp_val v;
    print_newline();
    read_eval_print newenv
with 
  Eval.Error "Variable not bound"-> print_string "eval error\n";read_eval_print env
 |Parsing.Parse_error -> print_string "parse error\n";read_eval_print env
 |_ -> print_string "something is wrong\n";read_eval_print env

let initial_env = 
  Environment.extend "i" (IntV 1)
    (Environment.extend "v" (IntV 5) 
       (Environment.extend "x" (IntV 10) 
	         (Environment.extend "ii" (IntV 2)
			        (Environment.extend "iii" (IntV 3)
					      (Environment.extend "iv" (IntV 4) Environment.empty)))))

let _ = read_eval_print initial_env
