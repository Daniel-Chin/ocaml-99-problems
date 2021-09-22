let rec _len acc = function
  | [] -> acc
  | h :: t -> _len (acc + 1) t
;;

let length x = _len 0 x;;
