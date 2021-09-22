let drop list n = 
  let rec aux acc k = function
    | [] -> acc
    | h :: t -> if k = 0 then aux acc (n-1) t else aux (h :: acc) (k-1) t
  in List.rev (aux [] (n-1) list)
;;

(* Jeez. whenever i do tail-rec, they dont. *)
