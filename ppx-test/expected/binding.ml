[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
module M =
  struct
    type t = Ojs.t
    let rec (t_of_js : Ojs.t -> t) = fun x2 -> x2
    and (t_to_js : t -> Ojs.t) = fun x1 -> x1
    let (cast : t -> string) = fun x3 -> Ojs.string_of_js (t_to_js x3)
    let (prop_get_arg : t -> int) =
      fun x4 -> Ojs.int_of_js (Ojs.get_prop_ascii (t_to_js x4) "getter")
    let (prop_get : unit -> int) =
      fun () -> Ojs.int_of_js (Ojs.get_prop_ascii Ojs.global "getter")
    let (global : t) = t_of_js (Ojs.get_prop_ascii Ojs.global "global")
    let (global_arrow : int -> int) =
      fun x5 ->
        Ojs.int_of_js (Ojs.call Ojs.global "global" [|(Ojs.int_to_js x5)|])
    let (prop_set : t -> int -> unit) =
      fun x6 ->
        fun x7 -> Ojs.set_prop_ascii (t_to_js x6) "setter" (Ojs.int_to_js x7)
    let (prop_set_global : t -> unit) =
      fun x8 -> Ojs.set_prop_ascii Ojs.global "setter" (t_to_js x8)
    let (method_call_global : t -> int) =
      fun x9 -> Ojs.int_of_js (Ojs.call (t_to_js x9) "method" [||])
    let (method_call_global_unit : t -> unit) =
      fun x10 -> ignore (Ojs.call (t_to_js x10) "method" [||])
    let (method_call_unit : t -> unit -> int) =
      fun x11 ->
        fun () -> Ojs.int_of_js (Ojs.call (t_to_js x11) "method" [||])
    let (method_call_args : t -> int -> int) =
      fun x13 ->
        fun x12 ->
          Ojs.int_of_js
            (Ojs.call (t_to_js x13) "method" [|(Ojs.int_to_js x12)|])
    let (method_call_unit_unit : t -> unit -> unit) =
      fun x14 -> fun () -> ignore (Ojs.call (t_to_js x14) "method" [||])
    let (method_call_args_unit : t -> int -> unit) =
      fun x16 ->
        fun x15 ->
          ignore (Ojs.call (t_to_js x16) "method" [|(Ojs.int_to_js x15)|])
    let (new_thing : int -> t) =
      fun x17 ->
        t_of_js
          (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Thing")
             [|(Ojs.int_to_js x17)|])
    let (builder : ?x:int -> int -> z:int -> t) =
      fun ?x:x18 ->
        fun x19 ->
          fun ~z:x20 ->
            let x21 = Ojs.empty_obj () in
            (match x18 with
             | Some x22 -> Ojs.set_prop_ascii x21 "x" (Ojs.int_to_js x22)
             | None -> ());
            Ojs.set_prop_ascii x21 "y" (Ojs.int_to_js x19);
            Ojs.set_prop_ascii x21 "z" (Ojs.int_to_js x20);
            t_of_js x21
    let (index_get_int : t -> int -> string option) =
      fun x23 ->
        fun x24 ->
          Ojs.option_of_js Ojs.string_of_js (Ojs.array_get (t_to_js x23) x24)
    let (index_get_string : t -> string -> string option) =
      fun x26 ->
        fun x27 ->
          Ojs.option_of_js Ojs.string_of_js
            (Ojs.get_prop (t_to_js x26) (Ojs.string_to_js x27))
    let (index_get_generic : t -> Ojs.t -> string option) =
      fun x29 ->
        fun x30 ->
          Ojs.option_of_js Ojs.string_of_js (Ojs.get_prop (t_to_js x29) x30)
    let (index_set_int : t -> int -> string -> unit) =
      fun x32 ->
        fun x33 ->
          fun x34 -> Ojs.array_set (t_to_js x32) x33 (Ojs.string_to_js x34)
    let (index_set_string : t -> string -> string -> unit) =
      fun x35 ->
        fun x36 ->
          fun x37 ->
            Ojs.set_prop (t_to_js x35) (Ojs.string_to_js x36)
              (Ojs.string_to_js x37)
    let (index_set_generic : t -> Ojs.t -> string -> unit) =
      fun x38 ->
        fun x39 ->
          fun x40 -> Ojs.set_prop (t_to_js x38) x39 (Ojs.string_to_js x40)
  end
