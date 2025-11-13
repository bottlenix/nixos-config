{ config, pkgs, ... }:

{
  # X11 windowing system
  services.xserver.enable = true;

  # KDE Plasma Desktop Environment
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Keymap configuration
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Sound with PipeWire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Printing support
  services.printing.enable = true;

  # Display resolution service for SPICE
  systemd.user.services.set-resolution = {
    description = "Set display resolution with xrandr";
    after = [ "graphical.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.xorg.xrandr}/bin/xrandr --output Virtual-1 --mode 1920x1080";
      Restart = "always";
    };
  };
}
