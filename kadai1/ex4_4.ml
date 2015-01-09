let curry f x y = f (x, y);;
let uncurry f (x , y) = f x y;;
let average (x,y) = (x +. y) /. 2.0;;
let curried_avg = curry average;;


