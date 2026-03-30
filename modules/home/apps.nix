{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Editors & IDEs
    emacs
    vscode-fhs
    zed-editor

    # Browsers
    brave

    # Communication
    thunderbird

    # Productivity & notes
    logseq
    zotero
    buku       # bookmark manager

    # Media
    obs-studio
    # stremio-linux-shell  # broken in current nixpkgs
    mpv
    foliate    # ebook reader

    # Music
    beets

    # Documents
    texmacs

    # Gaming
    steam

    # Version control GUI
    github-desktop
  ];
}
