let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {

  packages = with pkgs; [
    libyaml
  ];

  nativeBuildInputs = with pkgs; [
    vim
    coreutils-full
    pkg-config
    cmake
  ];

  shellHook = with pkgs; ''
    export LOCALE_ARCHIVE="${glibcLocales}/lib/locale/locale-archive";
    export PS1='\[\e[93;1;2m\]nix-shell@\W\[\e[0m\]\\$ '
  '';
}
