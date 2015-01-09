let hd (x::rest) = x;;
let rec change = function 
  (_,0) -> []
| ((c :: rest) as coins, total) ->
    if c > total then change (rest ,total)
	else
	  (try
	    c :: change (coins, total - c)
		with Failure "change" -> change(rest, total))
|_ -> raise (Failure "change");;

(* change([5;2],16) OUTPUT:[5; 5; 2; 2; 2] *)
