let encode x = let 
  rec aux buf = match buf with
    0, "" -> (function
      | h :: t -> aux (1, h) t
      | [] -> []
    )
    | n, sample -> (function
      | (h :: t) as l -> if h = sample then aux (n + 1, sample) t else buf :: aux (0, "") l
      | [] -> [buf]
    )
in aux (0, "") x;;
