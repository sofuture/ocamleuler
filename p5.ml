open Printf;;

let prime_dec x =
    let rec inner c p = 
        if p < (c*c) then [p]
        else if (p mod c) == 0 then
            c :: inner c (p / c)
        else
            inner (c+1) p
    in
    inner 2 x;;

let t = Hashtbl.create 21 in
for i = 2 to 20 do
    Hashtbl.replace t i 0
done;
for i = 2 to 20 do
    let fs = prime_dec i in
    for j = 2 to 20 do
        let cur = Hashtbl.find t j in
        let n = List.length (List.filter (fun x -> x == j) fs) in
        if n > cur then
            Hashtbl.replace t j n 
    done
done;

let pp k v acc = acc * int_of_float(float_of_int(k) ** float_of_int(v)) in
printf "%d\n" (Hashtbl.fold (pp) t 1)


