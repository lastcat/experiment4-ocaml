(* ex 4_7 *)
let k x y = x;;
let s x y z = x z (y z);;
(*
s k k 1
= k 1 (k 1)
= 1
*)

(*fun x y -> y function by using s,k combinator*)
(*is k (s k k) 
k (s k k) 1 2;; OUTPUT:2
*)
