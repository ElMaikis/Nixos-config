{ pkgs, lib, ... }:

{

  # Automatic updating
  system.autoUpgrade = {
	enable = true;
	dates = "weekly";
  };

  # Automatic cleanup
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
  nix.gc.options = "--delete-older-than 10d";
  nix.settings.auto-optimise-store = true;

}
