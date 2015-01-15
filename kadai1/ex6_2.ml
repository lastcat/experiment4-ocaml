(* ex6_2 int_of_nas, mul, monus function *)
type nat = Zero | OneMoreThan of nat;;
(* int_of_nas nas回+1とかすかね*)
let rec int_of_nat = function
  Zero -> 0
 |OneMoreThan n' -> (int_of_nat n') + 1;;
(* int_of_nat (OneMoreThan Zero) OUTPUT:1 *)
let rec add m n =
  match m with Zero -> n | OneMoreThan m' -> OneMoreThan (add m' n);;
(* add (OneMoreThan Zero) (OneMoreThan Zero) OUTPUT:OneMoreThan (OneMoreThan Zero)*)
let rec mul m n = 
match m with Zero -> Zero
           | OneMoreThan Zero -> n
           | OneMoreThan m' -> add n (mul m' n);;
(* mul (OneMoreThan (OneMoreThan Zero)) (OneMoreThan (OneMoreThan (OneMoreThan Zero)))*)
(*OUTPUT: OneMoreThan (OneMoreThan (OneMoreThan (OneMoreThan (OneMoreThan (OneMoreThan Zero)))))*)
let rec monus m n = 
match m with Zero -> Zero
          | OneMoreThan m' -> match n with Zero -> m
		                                 | OneMoreThan n' -> monus m' n'
(*monus (OneMoreThan (OneMoreThan Zero)) (OneMoreThan Zero)*)
(*OUTPUT: OneMoreThan Zero*)
