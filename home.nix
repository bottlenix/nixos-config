{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "samir";
  home.homeDirectory = "/home/samir";

  programs.fish = {
      enable = true;
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    htop
    vim
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

  programs.vscode = {
      enable = true;
  
      profiles.default.userSettings = {
          # This property will be used to generate settings.json:
          # https://code.visualstudio.com/docs/getstarted/settings#_settingsjson
          # "editor.formatOnSave" = true;
      };
      # keybindings = [
          # See https://code.visualstudio.com/docs/getstarted/keybindings#_advanced-customization
          # {
              # key = "shift+cmd+j";
              # command = "workbench.action.focusActiveEditorGroup";
              # when = "terminalFocus";
          # }
      # ];
  };

#  see https://nixos-and-flakes.thiscute.world/nixos-with-flakes/start-using-home-manager#getting-started-with-home-manager
#  for more examples on how to configure home.nix
}
