(* ex6_6 reflect function  *)
type 'a tree = Lf | Br of 'a * 'a tree * 'a tree;;

let rec reflect t =
 match t with
  Lf -> Lf
| Br (x,left,right) -> Br(x,reflect(right),reflect(left));;

let comptree = Br(1, Br(2, Br(4, Lf, Lf),
Br(5, Lf, Lf)),
Br(3, Br(6, Lf, Lf),
Br(7, Lf, Lf)));;

let rec preorder = function
  Lf -> []
 |Br (x,left,right) -> x :: (preorder left) @ (preorder right);;

let rec inorder = function
  Lf -> []
 |Br (x,left,right) -> (inorder left) @ (x :: inorder right);;

 let rec postorder = function
   Lf -> []
  |Br (x,left,right) -> (postorder left) @ (postorder right) @ [x];;
(*
reflect comptree
OUTPUT:Br (1, Br (3, Br (7, Lf, Lf), Br (6, Lf, Lf)),
       Br (2, Br (5, Lf, Lf), Br (4, Lf, Lf)))
preorder(reflect(t)) = reverse(postorder(comptree))

inorder(reflect(comptree)) = reverse(inorder(comptree))

postorder(reflect(comptree)) = reverse(preorder(comptree))

*)
