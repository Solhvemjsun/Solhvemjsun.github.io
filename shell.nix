let
  pkgs = import <nixpkgs> {};
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    zola
  ];

  shellHook = ''
    echo "Type 'zola serve' to open the live reloading website"
    echo "Type 'make' to deliver the whole website to /var/www/solthink.com"
  '';
}
