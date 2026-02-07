let
  pkgs = import <nixpkgs> {};
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/6308c3b21396534d8aaeac46179c14c439a89b8a.tar.gz") {};
in
pkgs.stdenv.mkDerivation {
  name = "academic-pages-env";
  buildInputs = [
    pkgs.ruby
    pkgs.bundler
    pkgs.git
    pkgs.gnumake
    pkgs.gcc
    pkgs.zlib
    unstable.prek
  ];
  shellHook = ''
    export GEM_HOME=$PWD/.gem
    export BUNDLE_PATH=$PWD/.gem
    export PATH=$GEM_HOME/bin:$PATH
  '';
}