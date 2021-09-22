let pack x = let 
  rec aux buf = match buf with
    [] -> (function
      | h :: t -> aux [h] t
      | [] -> []
    )
    | sample :: _ -> (function
      | (h :: t) as l -> if h = sample then aux (h :: buf) t else buf :: aux [] l
      | [] -> [buf]
    )
in aux [] x;;
