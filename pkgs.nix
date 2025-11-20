{ config, pkgs, ... }:

{ 

environment.systemPackages = with pkgs; [
  wget
  git
  curl
  discord
  fastfetch
  syncthing
  tailscale
  btop
  nvtopPackages.amd
  kitty
  pantheon-tweaks
  nix-init
  haruna
  bat
  prismlauncher 
  gnome-tweaks
  gnome-extension-manager
  wine
  bibata-cursors
  syncthing
  tailscale
  nh #yet another nix client helper
  pavucontrol
  wl-clipboard
  ];

services.flatpak.enable = true;
# services.tailscale.enable = true;
# services.syncthing = {
# enable = true;
# };

programs.neovim = {
enable = true;
defaultEditor = true;
};

programs.fish = {
 enable = true;
  
  shellAliases = {

conf = "sudo nvim /etc/nixos/configuration.nix";
pkgs = "sudo nvim /etc/nixos/pkgs.nix";

homer = "home-manager switch --flake /etc/nixos#maikis --impure";
nixosr = "sudo nixos-rebuild switch --flake /etc/nixos#flakes";
flakeup = "nix flake update";

};

  shellInit = "fastfetch";
  interactiveShellInit = ''
     set fish_greeting
     '';
};


}
