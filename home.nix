{ config, pkgs, ... }:

{
  home.username = "felippe";
  home.homeDirectory = "/home/felippe";

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   "Xft.dpi" = 172;
  # };

  home.packages = with pkgs; [
    neofetch

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    ripgrep-all
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    # eza # A modern replacement for ‘ls’
    lsd # A modern replacement for ‘ls’
    # fzf # A command-line fuzzy finder
    skim  # A command-line fuzzy finder
    zellij
    fd
    zoxide
    hyperfine
    rargs
    rm-improved
    ouch
    fclones
    fclones-gui
    pueue
    czkawka
    bat
    fuc
    rsync
    tokei
    jnv
    grex
    nomino
    licensor
    tabview
    espanso-wayland
    ast-grep
    rnote
    svgbob
    broot
    xplr
    yazi
    rio
    kalker
    wezterm
    just
    watchexec

    glicol-cli

    # misc
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # productivity
    glow # markdown previewer in terminal

    btop  # replacement of htop/nmon

    # fonts
    nerdfonts

    # other
    devbox
    devenv
    emacs
    vscode-fhs
    brave
    stremio
    zotero_7
    obs-studio
    logseq
    buku
    beets
    texmacs
    libreoffice-qt-fresh
    wpsoffice
    sonic-pi
    nyxt
    thunderbird
    kmail
    mpv
    # zoom-us
    foliate
    steam
  ];

  programs.git = {
    enable = true;
    userName = "Felippe Alves";
    userEmail = "flipgm@gmail.com";
  };

  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    # custom settings
    # settings = {
    #   add_newline = false;
    #   aws.disabled = true;
    #   gcloud.disabled = true;
    #   line_break.disabled = true;
    # };
  };

  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };

    # bash.enable = true; # see note on other shells below
  };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  #programs.alacritty = {
  #  enable = true;
  #  # custom settings
  #  settings = {
  #    env.TERM = "xterm-256color";
  #    font = {
  #      size = 12;
  #      draw_bold_text_with_bright_colors = true;
  #    };
  #    scrolling.multiplier = 5;
  #    selection.save_to_clipboard = true;
  #  };
  #};

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    #bashrcExtra = ''
    #  export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    #'';

    # set some aliases, feel free to add more or remove some
    #shellAliases = {
    #  k = "kubectl";
    #  urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
    #  urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
    #};
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
