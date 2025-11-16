{ config, pkgs, ... }:

{
  # QEMU guest agent
  services.qemuGuest.enable = true;

  # SPICE vdagent service
  services.spice-vdagentd.enable = true;

  # OpenSSH daemon
  services.openssh.enable = true;

  # Add other services here as needed
}
