(* ex7_4 factorial function*)
let fact_imp n = 
  let i = ref n and res = ref 1 in
    while(!i != 0) do
	  res := !res * !i;
	  i := !i -1
	done;
  !res;;
(*fact_imp 5 OUTPUT:120*)
