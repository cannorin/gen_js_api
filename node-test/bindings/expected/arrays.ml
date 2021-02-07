[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
module JsArray(E:sig type t val t_to_js : t -> Ojs.t val t_of_js : Ojs.t -> t
                 end) =
  struct
    type t = Ojs.t
    let rec (t_of_js : Ojs.t -> t) = fun x2 -> x2
    and (t_to_js : t -> Ojs.t) = fun x1 -> x1
    let (create : unit -> t) =
      fun () ->
        t_of_js (Ojs.new_obj (Ojs.get_prop_ascii Ojs.global "Array") [||])
    let (push : t -> E.t -> unit) =
      fun x4 ->
        fun x3 -> ignore (Ojs.call (t_to_js x4) "push" [|(E.t_to_js x3)|])
    let (pop : t -> E.t option) =
      fun x5 -> Ojs.option_of_js E.t_of_js (Ojs.call (t_to_js x5) "pop" [||])
  end
module JsString =
  struct
    type t = string
    let rec (t_of_js : Ojs.t -> t) = Ojs.string_of_js
    and (t_to_js : t -> Ojs.t) = Ojs.string_to_js
  end
module UntypedArray = struct include (JsArray)(Ojs) end
module StringArray =
  struct
    include (JsArray)(JsString)
    let (join : t -> string -> string) =
      fun x10 ->
        fun x9 ->
          Ojs.string_of_js
            (Ojs.call (t_to_js x10) "join" [|(Ojs.string_to_js x9)|])
  end