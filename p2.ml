let max = 4000000;;

let sum_last_two l =
    let lr = (List.rev l) in
    (List.hd lr) + (List.hd (List.tl lr));;

let append_int l i =
    List.append l [i];;

let rec go c =
    if (sum_last_two c) < max 
    then
        let next = sum_last_two c in
        Printf.printf "%d\n" next;
        go (append_int c next)
    else
        c;;
    
let _ =
    let ev = List.filter (fun x -> x mod 2 = 0) (go [1;1]) in
    let res = List.fold_left (+) 0 ev in
    Printf.printf "tada: %d\n" res;;
