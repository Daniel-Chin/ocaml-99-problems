let rec last = function
  | h :: [] -> Some h
  | _ :: t -> last t
  | [] -> None
;;
