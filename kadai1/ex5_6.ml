(*ex 5_6*)
let rec quick = function
  [] -> []
 | [x] -> [x]
 | x :: xs -> (* x is the pivot *)
    let rec partition left right = function
      [] -> (quick left) @ (x :: quick right)
      | y :: ys -> if x < y then partition left (y :: right) ys
                  else partition (y :: left) right ys
     in partition [] [] xs;;
(* without using '@' QuickSort function*)
let rec quicker l sorted = 
  match l with
  [] -> sorted
 |[x] -> x :: sorted
 |x :: xs -> 
   let rec partition left right = function
     [] -> quicker left (x :: quicker right sorted)
	 | y :: ys -> if x < y then partition left (y :: right) ys
	                  else partition (y :: left) right ys
					       in partition [] [] xs;

(*quicker [1;6;3;2;9;4] [] OUTPUT:[1;2;3;4;6;9]*)
