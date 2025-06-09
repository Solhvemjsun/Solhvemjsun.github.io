{
  description = "Sol's blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... }: let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShells."${pkgs.stdenv.hostPlatform.system}".default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        zola
      ];
      shellHook = ''
        echo "Fiat Nix!"
        echo "Use 'zola serve' to test"
        zola serve
      '';
    };
  };
}
