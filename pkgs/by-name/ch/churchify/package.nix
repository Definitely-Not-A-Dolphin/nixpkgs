{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "churchify";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "Definitely-Not-A-Dolphin";
    repo = "churchify";
    tag = finalAttrs.version;
    hash = "sha256-S/HesOLrVpsOx+Bj5oOF/bdUfBM2d6KzuEM35UQ7rPU=";
  };

  cargoHash = "sha256-W/4fia2hV9H6qamh23sO+YH5nhdlEsHGHSC6Ovnez7A=";

  meta = {
    description = "Encode text Keygen Church-style";
    homepage = "https://github.com/Definitely-Not-A-Dolphin/churchify";
    license = lib.licenses.unlicense;
    mainProgram = "churchify";
    maintainers = [ lib.maintainers.killioiden ];
  };
})
