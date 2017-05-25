
module Razer_device_lighting_brightness : sig
  val get_brightness : OBus_proxy.t -> float Lwt.t
  val set_brightness : OBus_proxy.t -> brightness : float -> unit Lwt.t
end

module Razer_device_lighting_chroma : sig
  val set_wave : OBus_proxy.t -> direction : int -> unit Lwt.t
  val set_static : OBus_proxy.t -> red : char -> green : char -> blue : char -> unit Lwt.t
  val set_spectrum : OBus_proxy.t -> unit Lwt.t
  val set_reactive : OBus_proxy.t -> red : char -> green : char -> blue : char -> speed : char -> unit Lwt.t
  val set_none : OBus_proxy.t -> unit Lwt.t
  val set_breath_random : OBus_proxy.t -> unit Lwt.t
  val set_breath_single : OBus_proxy.t -> red : char -> green : char -> blue : char -> unit Lwt.t
  val set_breath_dual : OBus_proxy.t -> red1 : char -> green1 : char -> blue1 : char -> red2 : char -> green2 : char -> blue2 : char -> unit Lwt.t
  val set_custom : OBus_proxy.t -> unit Lwt.t
  val set_key_row : OBus_proxy.t -> payload : string -> unit Lwt.t
end

module Razer_device_lighting_custom : sig
  val set_ripple : OBus_proxy.t -> red : char -> green : char -> blue : char -> refresh_rate : float -> unit Lwt.t
  val set_ripple_random_colour : OBus_proxy.t -> refresh_rate : float -> unit Lwt.t
end

module Razer_device_misc : sig
  val get_serial : OBus_proxy.t -> string Lwt.t
  val suspend_device : OBus_proxy.t -> unit Lwt.t
  val get_device_mode : OBus_proxy.t -> string Lwt.t
  val get_razer_urls : OBus_proxy.t -> string Lwt.t
  val set_device_mode : OBus_proxy.t -> mode_id : char -> param : char -> unit Lwt.t
  val resume_device : OBus_proxy.t -> unit Lwt.t
  val get_vid_pid : OBus_proxy.t -> int list Lwt.t
  val get_driver_version : OBus_proxy.t -> string Lwt.t
  val has_dedicated_macro_keys : OBus_proxy.t -> bool Lwt.t
  val get_firmware : OBus_proxy.t -> string Lwt.t
  val get_matrix_dimensions : OBus_proxy.t -> int list Lwt.t
  val has_matrix : OBus_proxy.t -> bool Lwt.t
  val get_device_name : OBus_proxy.t -> string Lwt.t
  val get_device_type : OBus_proxy.t -> string Lwt.t
end
