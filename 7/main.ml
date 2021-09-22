type 'a node =
  | One of 'a 
  | Many of 'a node list
;;

let rec flatten = 
  let flatOne = function
    | One x -> [x]
    | Many x -> flatten(x)
  in function
  | [] -> []
  | h :: t -> flatOne h @ flatten t
;;
