{
  description = "Feli's NixOS flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        tuxedoinfinitybookpro = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
      };
    };
  };
}

