{ config, pkgs, ... }:

{
  users.users.felippe = {
    isNormalUser = true;
    description = "felippe";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
