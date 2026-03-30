{ config, pkgs, ... }:

{
  # Bash
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = ''
      eval "$(zoxide init bash)"
    '';
  };

  # Starship prompt
  programs.starship = {
    enable = true;
  };

  # direnv + nix-direnv for per-project environments
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    nix-direnv.enable = true;
  };

  # Automount with udiskie (uses Nemo as file manager)
  services.udiskie = {
    enable = true;
    settings = {
      program_options = {
        file_manager = "${pkgs.nemo-with-extensions}/bin/nemo";
      };
    };
  };
}
