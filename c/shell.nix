let
  tarball = fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/24.11.tar.gz";
  pkgs = import tarball { config = {}; overlays = []; };
in

pkgs.mkShell {

  packages = with pkgs; [
  ];

  nativeBuildInputs = with pkgs; [
    pkg-config
    libyaml
  ];

  shellHook = with pkgs; ''
    export LOCALE_ARCHIVE="${glibcLocales}/lib/locale/locale-archive";
    export PS1='\[\e[93;1;2m\]nix-shell@\W\[\e[0m\]\\$ '
  '';
}
