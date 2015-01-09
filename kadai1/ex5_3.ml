(* ex5_3.ml *)
(* 1 *)
let rec downto0 n =
      match n with
	    0 -> [0]
      | m -> m :: downto0( m - 1);;
(*downto0 7 OUTPUT:[7;6;5;4;3;2;1;0]*)
(* 3 *)
let rec concat l = 
  match l with
  [] -> []
  | x :: xs -> match x with
                [] -> concat xs
			  |y :: ys -> y :: (concat (ys :: xs));;
(*concat [[0;3;4]; [2]; [5;0]; [] OUTPUT:[0;3;4;2;5;0]*)
(* 4 *)
let rec zip la lb = 
  match la with 
    [] -> []
	|x :: xs -> match lb with
	              [] -> []
				  |y ::ys -> (x,y) :: zip xs ys;;
(*zip [1;2;3;4;5] [5;4;3] OUTPUT:[(1,5); (2,4);(3,3)] *)
(* 5 *)
let rec filter p l =
  match l with 
  [] -> []
 |x::rest -> match p x with
                   true -> x :: (filter p rest)
				  |false -> filter p rest;;
(* filter (fun x -> (x > 0)) [-9;0;2;5;-3] OUTPUT:[2;5]*)
