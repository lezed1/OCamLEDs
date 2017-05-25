open Lwt

open Rbs_client

lwt _ =
  lwt bus = OBus_bus.session () in
  let proxy = OBus_proxy.make
      (OBus_peer.make bus "org.razer")
      ["org"; "razer"; "device"; "BY1702A24202399"] in
  Razer_device_lighting_chroma.set_wave proxy 1
