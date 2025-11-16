{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "bottlenix";
    userEmail = "bottlenix@gmail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
      # pull.rebase = false;
      core.editor = "vim";
    };

    aliases = {
      history = "log --all --oneline --decorate";
      # st = "status";
      # co = "checkout";
      # br = "branch";
      # ci = "commit";
      # unstage = "reset HEAD --";
    };
  };
}
