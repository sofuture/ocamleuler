open Printf;;

for i = 1 to 998 do
    for j = i to (998 - i) do
        let k = 1000 - i - j in
        if (i*i) + (j*j) == (k*k) then
            printf "%d\n" (i*j*k)
    done
done;;
