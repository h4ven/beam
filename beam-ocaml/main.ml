open Lwt.Infix

let main () =
  Ops.read_file "/mnt/d/tmp/abc.txt"
  >>= fun contents ->
  print_endline contents;
  Lwt.return_unit
;;

let () = Lwt_main.run @@ main ()