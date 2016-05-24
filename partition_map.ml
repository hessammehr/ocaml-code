open Core
(* List.map2 (fun x y -> (x,y)) [1;2;3] [4;5;6;7] *)

let f a =
  if a mod 2 = 0 then
    `Fst ((string_of_int a) ^ " is even")
  else
    `Snd ((string_of_int a) ^ " is odd")

let main () =
  let (p1,p2) = (Std.List.partition_map [1;2;3] f) in
  List.map print_endline p1;
  List.map print_endline p2;
  ()

let _ = main ()
