(* ML interpreter / type reconstruction *)
type id = string

type binOp = Plus | Mult | Lt | AND | OR

type exp =
    Var of id
  | ILit of int
  | BLit of bool
  | BinOp of binOp * exp * exp
  | IfExp of exp * exp * exp
  | LetExp of id * exp * exp
  | FunExp of id * exp
  | AppExp of exp * exp
  | LetRecExp of id * id * exp *exp

type program = 
    Exp of exp
  | Decl of id * exp
  | RecDecl of id * id * exp

type tyvar = int

type ty =
   TyInt
 | TyBool
 | TyVar of tyvar
 | TyFun of ty * ty

let rec string_of_ty ty = 
  let var_id = ref [] in
  let get_var_id tyvar = 
    let rec index_of counter var_list = 
	  (match var_list with
	    [] -> var_id := !var_id @ [tyvar] ;counter
	   |x ::rest -> if x = tyvar then counter else index_of (counter + 1) rest)
	   in index_of 0 !var_id in
   match ty with
     TyInt -> "int"
    |TyBool -> "bool"
    |TyVar tyvar -> Printf.sprintf "'%c" (char_of_int((int_of_char 'a') + (get_var_id tyvar)))
    |TyFun (ty1,ty2) -> 
	  let st1 = 
	  match ty1 with
	    TyFun(_,_) -> "(" ^string_of_ty ty1 ^")"
	   |_ -> string_of_ty ty1 in
	 let st2 = 
	   string_of_ty ty2 in 
	   Printf.sprintf "%s -> %s" st1 st2


let pp_ty ty = print_string (string_of_ty ty)
 
let fresh_tyvar = 
   let counter = ref 0 in
   let body () = 
     let v = !counter in
	   counter := v + 1;v
   in body

 let rec freevar_ty = function
   TyVar tyv -> MySet.singleton tyv
   |TyFun (ty1,ty2) -> MySet.union (freevar_ty ty1) (freevar_ty ty2)
   |_ -> MySet.empty
