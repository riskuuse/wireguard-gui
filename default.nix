{ rustPlatform, pkg-config, wireguard-tools, glib, gtk4 polkit}:
rustPlatform.buildRustPackage rec {
  pname = "wireguard-gui";
  version = "0.1.0";

  src = ./.;

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    wireguard-tools
    glib.dev
    gtk4.dev
    polkit
  ];

  cargoSha256 = "sha256-rV+GAOd3BmbMZKDKRDFNzrSbi5IqptNoFo9wHRDBPT0=";
}
