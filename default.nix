{ stdenv, 
  fetchFromGithub, 
  pkgs,
}:

stdenv.mkDerivation {
  name = "xenlism-nixos";

  installPhase = ''
    mkdir -p $out/grub/themes
    cp -r $src/xenlism-nixos $out/grub/themes/xenlism-nixos
  '';
}
