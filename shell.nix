let
  pkgs = import <nixpkgs> { };

  verso = pkgs.haskellPackages.callCabal2nix "verso" ./. { };

in
verso.env.overrideAttrs (prev: {
  buildInputs = [
    pkgs.cabal-install
    pkgs.ghcid
  ];
})
