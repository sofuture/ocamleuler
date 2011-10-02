
let rec sum_squares y acc =
    if y == 0 then acc
    else 
        sum_squares (y-1) (acc + (y*y));;

let rec sum y acc =
    if y = 0 then acc
    else 
        sum (y-1) (acc + y);;

let square_sum y =
    let a = sum y 0 in
    (a*a);;


let _ =
    let s1 = sum_squares 100 0 in
    let s2 = square_sum 100 in 
    let diff = s1 - s2 in 
    Printf.printf "%d\n" (abs diff);;
