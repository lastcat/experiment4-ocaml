(*ex4_5*)
let rec repeat f n x =
  if n > 0 then repeat f (n-1) (f x) else x;;

let fib n = 
  let (fibn,_) = repeat (fun (x,y) -> (y,x+y)) n (0,1);
  in fibn;;
 (* fib 5 OUTPUT:5*)
