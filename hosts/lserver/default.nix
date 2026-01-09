{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./raid.nix
    ./system-configuration.nix
  ];

  networking.hostName = "lserver";
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  environment.systemPackages = with pkgs; [
    docker
    lm_sensors
    mdadm
  ];

  system.stateVersion = "23.11";
}
