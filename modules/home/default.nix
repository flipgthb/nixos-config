{ config, pkgs, ... }:

{
  imports = [
    ./cli.nix
    ./apps.nix
    ./git.nix
    ./shell.nix
  ];

  home.username = "felippe";
  home.homeDirectory = "/home/felippe";

  # Let home-manager manage itself
  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
