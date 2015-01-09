(*ex4_1 integral function*)
let integral f a b =
(* n = 10*)
let ips = (b -. a) /. 10.0 in
let sum = ref 0.0 in
for i = 1 to 10 do
  sum := !sum +. (f(a +. (float_of_int i -.1.0) *.ips) +. f(a +. float_of_int i *. ips)) *. ips /. 2.0
done;
  !sum;;
(*integral (fun y -> y *. y) 2.0 3.0 OUTPUT:6.335*)

