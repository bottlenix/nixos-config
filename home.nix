{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "samir";
  home.homeDirectory = "/home/samir";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    htop
    vim
    # fortune
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "bottlenix";
    userEmail = "bottlenix@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

#  services.gpg-agent = {
#    enable = true;
#    defaultCacheTtl = 1800;
#    enableSshSupport = true;
#  };

#  see https://nixos-and-flakes.thiscute.world/nixos-with-flakes/start-using-home-manager#getting-started-with-home-manager
#  for more examples on how to configure home.nix
}
