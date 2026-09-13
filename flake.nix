{
  description = "";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs }@inputs: {

    devShells.aarch64-darwin.default = let
      system = "aarch64-darwin";
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      buildInputs = [
        # Use for building.
        pkgs.just
        pkgs.hugo
      ];
    };

  };
}
