(* (My student number + 3000)th prime number *)

type 'a seq = Cons of 'a * (unit -> 'a seq);;

let rec from n = Cons (n, fun() -> from (n+1));;
let head (Cons (x,_)) = x;;
let tail (Cons (_,f)) = f();;
let ttail (Cons (x,f)) = (tail(f()));;
let rec take n s = 
  if n= 0 then [] else head s :: take (n-1) (tail s);;

let rec mapseq f (Cons (x,tail)) = 
  Cons (f x, fun () -> mapseq f (tail ()));;

let rec sift n (Cons (x,f)) = 
  if (x mod n) = 0 then sift n (f())
  else Cons(x, fun() -> sift n (f()));;


let rec sieve (Cons (x,f)) = Cons (x,fun () -> sieve (sift x (f())));;
let primes = sieve(from 2);;
let rec nthseq n (Cons (x,f)) = 
  if n = 1 then x else nthseq (n-1) (f());;

(* nthseq 12227 primes OUTPUT:130729*)
