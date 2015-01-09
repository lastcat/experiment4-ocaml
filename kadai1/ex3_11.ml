(* 3-11 (1) gdb using Euclid algorithm *)
let rec gcd (n,m) = (* n >= m *)
  if m = 0 then n
  else gcd(m,n mod m);;
(* gcd(123,432) OUTPUT:3 *)

(* 3-11 (2) comb function *)
let rec comb (n,m) =
  if m = 0 then 1
  else if m = n then 1
  else  comb(n-1,m) + comb(n-1,m-1);;
(*comb(6,2) OUTPUT:15*)

(* 3-11 (3) recursive fib calculate function *)
let fib_iter n =
  let rec fib_iter_ (n, n1 ,n2) = 
    if n = 0 then n1 else fib_iter_ (n-1, n1 + n2, n1)
  in 
    fib_iter_ (n,1,0);;
(*fib_iter(5) OUTPUT:8*)
(*3-11 (4) max_ascii function *)

let max (a,b) = 
  if a > b then a else b;;

let rec max_ascii str =
  let max_c = ref '0' in 
  for i = 0 to String.length(str) -1  do
    max_c := max(!max_c,str.[i])
  done;
  !max_c;;
(*  max_ascii("e673uhda9d") OUTPUT:'u'*)
