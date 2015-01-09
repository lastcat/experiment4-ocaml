(* n times called ver.*)
let rec pow (x,n) =
  if n = 0 then 1
  else x * pow(x,n-1);;
(* pow(2,3) OUPUT:8*)
(*logn times called ver.*)
let rec pow (x,n) = 
  if n = 0 then 1
  else if n mod 2 = 1 then x * pow(x,n-1)
  else pow(x*x,n/2);;
(* pow(2,3) OUTPUT:8*)
