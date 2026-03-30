{ config, pkgs, ... }:

{
  # Audio via PipeWire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Gamepad / input devices
  hardware.uinput.enable = true;
  services.udev.packages = [ pkgs.game-devices-udev-rules ];

  # Console keymap
  console.keyMap = "pt-latin1";
}
