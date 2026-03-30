{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch

    # Archives
    zip
    xz
    unzip
    p7zip
    ouch       # unified archive tool
    zstd

    # Modern Unix replacements
    lsd        # ls replacement
    bat        # cat replacement
    fd         # find replacement
    ripgrep    # grep replacement
    ripgrep-all
    fuc        # cp/rm replacement (faster)
    rm-improved
    rsync

    # Fuzzy finding & navigation
    skim       # fzf alternative
    zoxide     # smarter cd

    # Terminal multiplexer
    zellij

    # Data processing
    jq         # JSON processor
    yq-go      # YAML processor
    jnv        # interactive jq
    grex       # regex generator
    gawk
    gnused
    gnutar

    # File management
    fclones    # duplicate finder
    fclones-gui
    czkawka    # duplicate/junk finder

    # Process management
    pueue      # async task queue
    btop       # system monitor

    # Dev utilities
    hyperfine  # benchmarking
    tokei      # code stats
    just       # command runner
    devenv     # dev environments

    # Other utilities
    file
    which
    tree
    gnupg
    glow       # markdown previewer
    kalker     # calculator REPL
  ];
}
