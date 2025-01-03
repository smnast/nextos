# "Help is available" - NixOS

{ pkgs, ... }:

{
  imports = [
    ./stylix.nix
  ];

  # System configuration
  networking.hostName = "x13";
  time.timeZone = "America/Vancouver";

  # Module configuration
  modules = {
    bear.enable = true;
    blender.enable = true;
    bluetooth.enable = true;
    cloc.enable = true;
    cmake.enable = true;
    docker.enable = true;
    firefox.enable = true;
    gcc.enable = true;
    gdb.enable = true;
    ghidra.enable = true;
    godot.enable = true;
    grub.enable = true;
    htop.enable = true;
    java.enable = true;
    kdeconnect.enable = true;
    krita.enable = true;
    libreoffice.enable = true;
    make.enable = true;
    neofetch.enable = true;
    netcat.enable = true;
    ninja.enable = true;
    nvim.enable = true;
    obs.enable = true;
    pnpm.enable = true;
    psmisc.enable = true;
    python.enable = true;
    qemu.enable = true;
    rust.enable = true;
    scons.enable = true;
    scrcpy.enable = true;
    steam_run.enable = true;
    sxiv.enable = true;
    tree.enable = true;
    vlc.enable = true;
    wget.enable = true;
    ytdlp.enable = true;
    zip.enable = true;

    android_studio = {
      enable = true;
      enableADB = true;
    };

    cups = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };

    hyprland = {
      enable = true;
      withUWSM = true;
    };

    networkmanager = {
      enable = true;
      waitForOnline = false;
    };

    wine = {
      enable = true;
      waylandSupport = true;
    };
  };

  # Power button behaviour
  services.logind.extraConfig = ''
    HandlePowerKey=suspend
  '';
}
