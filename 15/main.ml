let replicate list n = let 
  rec aux n = let 
    rec repeat n s = if n = 0 then [] else s :: repeat (n-1) s
  in function
    | [] -> []
    | h :: t -> repeat n h @ aux n t
in aux n list;;
