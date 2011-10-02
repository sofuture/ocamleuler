open Printf;;

let is_prime n = 
    let rec loop k =
        if k * k > n then true
        else if n mod k = 0 then false
        else loop (k+2)
    in loop 3;;

let rec sum_p_to n acc =
    if n <= 2_000_000 then 
        if (is_prime n) then
            sum_p_to (n+2) (acc+n)
        else 
            sum_p_to (n+2) acc
    else acc;;

printf "%d\n" (2 + (sum_p_to 3 0))
