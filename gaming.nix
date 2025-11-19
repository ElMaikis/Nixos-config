{ pkgs, ... }:

{


   hardware.graphics = {
	enable = true;
 };

 services.xserver.videoDrivers = ["amdgpu"];

   programs.steam = {
	enable = true;
	gamescopeSession.enable = true;

     };
	environment.systemPackages = with pkgs; [
		mangohud
		protonplus
		lutris
		heroic
	];

   programs.gamemode.enable = true;


}
