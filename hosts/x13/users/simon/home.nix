{ config, hostRoot, ... }:

{
  homeModules = {
    bluetui.enable = true;
    cp-tool.enable = true;
    firefox.enable = true;
    gammastep.enable = true;
    hypridle.enable = true;
    hyprland.enable = true;
    hyprlock.enable = true;
    hyprpaper.enable = true;
    kitty.enable = true;
    mako.enable = true;
    nvim.enable = true;
    precomp-bits.enable = true; # i'm coming back later...
    rofi.enable = true;
    tmux.enable = true;
    waybar.enable = true;
    yazi.enable = true;
    zsh.enable = true;

    aliases = {
      hypr = "uwsm start -S hyprland-uwsm.desktop";
      hyprexit = "uwsm stop";

      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#x13";
      update = "sudo sh -c 'nix flake update --flake /etc/nixos && nixos-rebuild switch --flake /etc/nixos#x13'";
      garbage = "sudo nix-collect-garbage -d --delete-older-than 14d";

      cpt = "source cpt -t=${hostRoot}/assets/cp/template";
    };

    git = {
      enable = true;
      name = "Simon Ashton";
      email = "simonashton.dev@gmail.com";
    };

    python.packages = [
      # You can find these packages with `nix-env -f '<nixpkgs>' -qaP -A python3Packages`
      # Note the headings and descriptions were (mostly) generated by ChatGPT
      # Deep Learning Frameworks
      "torch"             # PyTorch framework for deep learning
      "torchvision"       # Vision utilities for PyTorch
      "open-clip-torch"   # CLIP (Contrastive Language-Image Pretraining) model for PyTorch
      "tensorflow"        # TensorFlow, a machine learning framework
      "keras"             # High-level neural networks API, often used with TensorFlow

      # Monitoring & Profiling
      "tensorboard"       # TensorFlow's visualization toolkit
      "torch-tb-profiler" # PyTorch profiler for TensorBoard integration
      "wandb"             # Weights & Biases for experiment tracking

      # Optimization & Reinforcement Learning
      "stable-baselines3" # Reinforcement learning library based on PyTorch
      "gymnasium"         # Gymnasium, RL environment toolkit
      "gymnasium[box2d]"  # Gymnasium environment for 2D physics simulations
      "mujoco"            # Physics engine for robotics and reinforcement learning

      # Data Science & Scientific Computing
      "numpy"             # Fundamental package for scientific computing with Python
      "scipy"             # Scientific computing library for Python
      "pandas"            # Data analysis and manipulation library
      "matplotlib"        # Plotting library for creating static, animated, and interactive visualizations
      "plotly"            # Interactive graphing library
      "opencv-python"     # Computer vision library
      "imageio"           # Reading and writing image data

      # Game Development & Simulation
      "pygame"            # Game development library for creating games
      "pyglet"            # Library for game development, windowing, and multimedia
      "pyvista"           # 3D plotting and mesh analysis library

      # Automation & GUI
      "pyautogui"         # Automation library for GUI control
      "pynput"            # Library to monitor and control input devices (keyboard/mouse)
      "pure-python-adb"   # Python library for controlling Android devices via ADB
      "discordpy"         # Library for creating Discord bots

      # Simulation & Control
      "brian2"            # Simulator for spiking neural networks

      # Exploitation/Hacking
      "pwntools"          # CTF framework and exploit development library

      # Miscellaneous
      "python-dotenv"     # Read environment variables from .env file
    ];

    xdg = {
      userDirs = {
        enable = true;

        directories = {
          desktop = "${config.home.homeDirectory}/desktop";
          documents = "${config.home.homeDirectory}/documents";
          download = "${config.home.homeDirectory}/downloads";
          music = "${config.home.homeDirectory}/music";
          pictures = "${config.home.homeDirectory}/pictures";
          publicShare = "${config.home.homeDirectory}/public_share";
          templates = "${config.home.homeDirectory}/templates";
          videos = "${config.home.homeDirectory}/videos";
        };

        extraDirectories = {
          XDG_GIT_DIR = "${config.home.homeDirectory}/git";
        };
      };

      mimeApps = {
        enable = true;

        defaultApplications = {
          image = "sxiv.desktop";
        };
      };
    };
  };

  home.stateVersion = "24.11";
}
