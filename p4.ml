let is_pal str =
    let last = String.length str - 1 in
    try
        for i = 0 to last / 2 do
            let j = last - i in
            if str.[i] <> str.[j] then raise Exit
        done;
        (true)
    with Exit ->
        (false);;

let max a b =
    if a > b then a
    else b;;

let rec np i j a =
    if i >= 999 then np 1 (j+1) a
    else if j >= 999 then a
    else 
        let n = (i*j) in
        if is_pal (string_of_int n) then
            np (i+1) j ((i*j) :: a)
        else
            np (i+1) j a

let _ =
    Printf.printf "%d\n" (List.fold_left (max) 0 (np 1 1 []));;
