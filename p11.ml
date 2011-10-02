open Printf;;


let ic = open_in "p11.dat" in
try
    while true do
        let s = input_line ic in
        printf "%s\n" s
    done
with End_of_file ->
    ()



