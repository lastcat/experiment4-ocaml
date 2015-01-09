(*2.6(1) dollars -> yen function*)
let yen_of_dollars dollars = int_of_float(floor(dollars *. 111.12 +. 0.5));;
(* yen_of_dollars(5.0) OUTPUT:556 *)
(*2.6(2) yen -> dollars function*)
let dollars_of_yen (yen : int) : float = floor(float_of_int (yen) /. 111.12 *. 10.0 +. 0.5) /. 10.0;;
(* dollars_of_yen(300) OUTPUT:2.7*)
(*2.6(4) small character -> big character *)
let capitalize(character : char) : char =
  if(character >='a' && character <= 'z') then
   char_of_int(int_of_char(character) + (int_of_char('A')-int_of_char('a')))
  else 
    character;;
(* capitalize 'a' OUTPUT:'A'*)
(* capitalize '1' OUTPUT: '1'*)
