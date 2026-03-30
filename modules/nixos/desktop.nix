{ config, pkgs, ... }:

{
  # COSMIC Desktop (Wayland-native, by System76)
  services.desktopManager.cosmic.enable = true;
  services.displayManager.cosmic-greeter.enable = true;

  # KDE Connect still works on COSMIC
  programs.kdeconnect.enable = true;

  # Firefox
  programs.firefox.enable = true;

  # XDG portals (needed for Flatpak and screen sharing)
  xdg.portal.enable = true;
}
