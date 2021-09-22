type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let rec decode = let 
  rec repeat s x = if x = 0 then [] else s :: repeat s (x - 1)
in function
  | [] -> []
  | One s :: t -> s :: decode t
  | Many (n, s) :: t -> repeat s n @ decode t
;;
