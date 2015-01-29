open Syntax
exception TypeError of ty * ty

type subst = (tyvar * ty) list 

exception Error of string
let err s = raise (Error s)
(* Type Environment *)
type tyenv = ty Environment.t
let ty_prim op ty1 ty2 = match op with
    Plus -> ([(ty1,TyInt); (ty2,TyInt)],TyInt)
   |Mult -> ([(ty1,TyInt); (ty2,TyInt)],TyInt)
   |Lt -> ([(ty1,TyInt);(ty2,TyInt)],TyInt)


let rec subst_type subst = function 
    TyInt -> TyInt
  | TyBool -> TyBool
  | TyFun (ty1,ty2) ->
     TyFun (subst_type subst ty1,subst_type subst ty2)
  | TyVar tv ->
	match subst with
	   [] -> (TyVar tv)
	  |(tvar,ty) :: rest -> 
	    if tv = tvar then subst_type subst ty
	                 else subst_type rest (TyVar tv)

let rec subst_eqs s eqs =
  match eqs with
    [] -> []
  | (ty1,ty2) :: rest ->
    (subst_type s ty1,subst_type s ty2) :: (subst_eqs s rest)

let rec unify eqs =
  match eqs with
    [] -> []
  | type_pair :: rest ->
    (match type_pair with
      TyInt,TyInt | TyBool,TyBool -> unify rest
   | (TyVar ty1),(TyVar ty2) ->
     if ty1 = ty2 then unify rest
     else let eqs = (ty1,(TyVar ty2)) in
       eqs :: (unify (subst_eqs [eqs] rest))
   | (TyVar ty),ty1 | ty1,(TyVar ty) ->
     if MySet.member ty (freevar_ty ty1) then err ("type error")
     else (ty,ty1) :: (unify (subst_eqs [(ty,ty1)] rest))
   | TyFun (ty11,ty12),TyFun (ty21,ty22) ->
     unify ((ty12,ty22) :: (ty11,ty21) :: rest)
   | _ -> err("type error"))

let rec eqs_of_subst s =
  match s with
    [] -> []
  | (tv, ty) :: rest -> (TyVar tv,ty) :: eqs_of_subst rest

let rec ty_exp tyenv = function
    Var x ->
      (try ([],Environment.lookup x tyenv) with
        Environment.Not_bound -> err ("variable not bound: " ^ x))
  | ILit _ -> ([],TyInt)
  | BLit _ -> ([],TyBool)
  | BinOp (op, exp1, exp2) ->
    let (s1, ty1) = ty_exp tyenv exp1 in
    let (s2, ty2) = ty_exp tyenv exp2 in
    let (eqs3, ty) = ty_prim op ty1 ty2 in
    let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) @ eqs3 in
    let s3 = unify eqs in (s3, subst_type s3 ty)
  | IfExp (exp1, exp2, exp3) ->
    let (s1,ty1) = ty_exp tyenv exp1 in
	  (match ty1 with 
	      TyVar _ | TyBool ->
	      let (s2,ty2) = ty_exp tyenv exp2 in
		  let (s3,ty3) = ty_exp tyenv exp3 in
		  let eqs = [(ty1,TyBool)] @ (eqs_of_subst s1) @ (eqs_of_subst s2)
		   @ (eqs_of_subst s3) @ [(ty2,ty3)] in
		   let s3 = unify eqs in (s3,subst_type s3 ty2)
        |_ -> err("arugument type Error"))
  | LetExp (id, exp1, exp2) ->
    let (s1,ty1) = ty_exp tyenv exp1 in
	let (s2,ty2) = ty_exp (Environment.extend id ty1 tyenv) exp2 in
	let s3 = unify ((eqs_of_subst s2) @ (eqs_of_subst s1)) in
	    (s3,subst_type s3 ty2)
  | FunExp (id,exp) ->
      let domty = TyVar (fresh_tyvar ()) in
      let s, ranty =
        ty_exp (Environment.extend id domty tyenv) exp in
        (s, TyFun (subst_type s domty, ranty))
  | AppExp (exp1,exp2) ->
      let (s1,ty1) = ty_exp tyenv exp1 in
      let (s2,ty2) = ty_exp tyenv exp2 in
	  match ty1 with
	    TyVar _ | TyFun(_,_) ->
          let domty = TyVar (fresh_tyvar ()) in
          let eqs = (ty1, TyFun(ty2, domty)) :: (eqs_of_subst s1) @ (eqs_of_subst s2) in
          let s3 = unify eqs in (s3, subst_type s3 domty)
      | _ -> err ("It is not function.")

let ty_decl tyenv = function
    Exp e -> ty_exp tyenv e
  | Decl (_,e) -> ty_exp tyenv e
  | _ -> err ("Not Implemented!")

