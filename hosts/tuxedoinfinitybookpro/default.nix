{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  networking.hostName = "tuxedoinfinitybookpro";

  system.stateVersion = "24.05";
}
