
let max a b =
    if a > b then a
    else b;;

let prime_decomp x =
    let rec inner c p =
        if p < (c*c) then
            [p]
        else if p mod c = 0 then
            c :: inner c (p / c)
        else
            inner (c + 1) p
    in
    inner 2 x;;

let _ =
    Printf.printf "%d\n"
        (List.fold_left (max) 0 (prime_decomp 600851475143))
