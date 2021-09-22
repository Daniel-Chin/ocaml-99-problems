let compress x = let 
  rec aux acc = function
    | [] -> []
    | h :: neck :: t -> if h = neck then aux acc (h :: t) else aux (h :: acc) (neck :: t)
    | h :: [] -> List.rev (h :: acc)
in aux [] x;;
