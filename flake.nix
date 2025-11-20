{
  description = "My silly config :3";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
     home-manager = {
       url = "github:nix-community/home-manager/release-25.05";
       inputs.nixpkgs.follows = "nixpkgs";
     };
   };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {
    
    nixosConfigurations = { 
      flakes = lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    # inputs.home-manager.nixosModules.default
    };
  };
  homeConfigurations = {
   maikis = home-manager.lib.homeManagerConfiguration {
	inherit pkgs;
	modules = [ /etc/nixos/home.nix ];
      };
    };
  };
}

