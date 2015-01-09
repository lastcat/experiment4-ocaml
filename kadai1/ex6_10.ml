(* ex6_10 *)
type ('a, 'b) sum = Left of 'a | Right of 'b;;

let float_of_int_or_float = function
    Left i -> float_of_int i
  | Right f -> f;;

(*1*)
let f1 (a,bcsum) = 
  match bcsum with
    Left b -> Left(a, b)
   |Right c -> Right(a,c);;

let f2 (absum,cdsum) = 
  match absum with
  Left a -> match cdsum with
            Left c -> Left(Left(a,c))
		   |Right d -> Left(Right(a,d))
 |Right b -> match cdsum with
             Left c -> Right(Left(b,c))
			|Right d -> Right(Right(b,d));;
(*
f1 : 'a * ('b, 'c) sum -> ('a * 'b, 'a * 'c) sum = <fun>
f2 :
  ('a, 'b) sum * ('c, 'd) sum ->
    (('a * 'c, 'a * 'd) sum, ('d * 'c, 'd * 'd) sum) sum = <fun>
*)
