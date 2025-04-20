{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "chargen";
  version = "0.1.0";
  src = ./src;

  nativeBuildInputs = [
    pkgs.stdenv.cc
  ];

  buildPhase = ''
    echo 'build phase'
    gcc -o ${pname} ${src}/main.c
  '';

  installPhase = ''
    echo 'install phase'
    mkdir -p $out/bin
    cp ${pname} $out/bin
  '';

}
