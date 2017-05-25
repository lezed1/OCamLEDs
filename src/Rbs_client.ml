open Lwt
open Rbs_interfaces

module Razer_device_lighting_brightness =
struct
  open Razer_device_lighting_brightness


  let get_brightness proxy =
    OBus_method.call m_getBrightness proxy ()

  let set_brightness proxy ~brightness =
    OBus_method.call m_setBrightness proxy brightness
end

module Razer_device_lighting_chroma =
struct
  open Razer_device_lighting_chroma


  let set_wave proxy ~direction =
    let direction = Int32.of_int direction in
    OBus_method.call m_setWave proxy direction

  let set_static proxy ~red ~green ~blue =
    OBus_method.call m_setStatic proxy (red, green, blue)

  let set_spectrum proxy =
    OBus_method.call m_setSpectrum proxy ()

  let set_reactive proxy ~red ~green ~blue ~speed =
    OBus_method.call m_setReactive proxy (red, green, blue, speed)

  let set_none proxy =
    OBus_method.call m_setNone proxy ()

  let set_breath_random proxy =
    OBus_method.call m_setBreathRandom proxy ()

  let set_breath_single proxy ~red ~green ~blue =
    OBus_method.call m_setBreathSingle proxy (red, green, blue)

  let set_breath_dual proxy ~red1 ~green1 ~blue1 ~red2 ~green2 ~blue2 =
    OBus_method.call m_setBreathDual proxy (red1, green1, blue1, red2, green2, blue2)

  let set_custom proxy =
    OBus_method.call m_setCustom proxy ()

  let set_key_row proxy ~payload =
    OBus_method.call m_setKeyRow proxy payload
end

module Razer_device_lighting_custom =
struct
  open Razer_device_lighting_custom


  let set_ripple proxy ~red ~green ~blue ~refresh_rate =
    OBus_method.call m_setRipple proxy (red, green, blue, refresh_rate)

  let set_ripple_random_colour proxy ~refresh_rate =
    OBus_method.call m_setRippleRandomColour proxy refresh_rate
end

module Razer_device_misc =
struct
  open Razer_device_misc


  let get_serial proxy =
    OBus_method.call m_getSerial proxy ()

  let suspend_device proxy =
    OBus_method.call m_suspendDevice proxy ()

  let get_device_mode proxy =
    OBus_method.call m_getDeviceMode proxy ()

  let get_razer_urls proxy =
    OBus_method.call m_getRazerUrls proxy ()

  let set_device_mode proxy ~mode_id ~param =
    OBus_method.call m_setDeviceMode proxy (mode_id, param)

  let resume_device proxy =
    OBus_method.call m_resumeDevice proxy ()

  let get_vid_pid proxy =
    lwt x1 = OBus_method.call m_getVidPid proxy () in
    let x1 = List.map Int32.to_int x1 in
    return x1

  let get_driver_version proxy =
    OBus_method.call m_getDriverVersion proxy ()

  let has_dedicated_macro_keys proxy =
    OBus_method.call m_hasDedicatedMacroKeys proxy ()

  let get_firmware proxy =
    OBus_method.call m_getFirmware proxy ()

  let get_matrix_dimensions proxy =
    lwt x1 = OBus_method.call m_getMatrixDimensions proxy () in
    let x1 = List.map Int32.to_int x1 in
    return x1

  let has_matrix proxy =
    OBus_method.call m_hasMatrix proxy ()

  let get_device_name proxy =
    OBus_method.call m_getDeviceName proxy ()

  let get_device_type proxy =
    OBus_method.call m_getDeviceType proxy ()
end
