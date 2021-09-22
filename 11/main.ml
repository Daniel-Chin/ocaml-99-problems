type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let encode x = let 
  rec aux buf = let 
    reduce (n, s) = if n = 1 then One s else Many (n, s) 
  in match buf with
    0, "" -> (function
      | h :: t -> aux (1, h) t
      | [] -> []
    )
    | n, sample -> (function
      | (h :: t) as l -> if h = sample then aux (n + 1, sample) t else reduce buf :: aux (0, "") l
      | [] -> [reduce buf]
    )
in aux (0, "") x;;
