
let _ =
    let sum = ref 0 in
    for i = 1 to 999
    do
        if i mod 3 = 0 || i mod 5 = 0
        then
            sum := !sum + i
    done;
    Printf.printf "sum: %d\n" !sum
