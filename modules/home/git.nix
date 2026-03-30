{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    signing.format = null;
    settings = {
      user.name = "Felippe Alves";
      user.email = "flipgm@gmail.com";
      credential.helper = "cache";
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
