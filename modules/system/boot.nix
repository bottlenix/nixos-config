{ config, pkgs, ... }:

{
  # Bootloader configuration
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
  boot.loader.grub.useOSProber = false;

  # Use latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
