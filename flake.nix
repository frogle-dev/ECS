{
  description = "c++ dev env libc++";

  inputs.nixpkgs.url = "github:Nixos/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.llvmPackages.libcxxStdenv.mkShell {
        packages = with pkgs; [
          clang
          clang-tools
          libcxx
          xmake
          llvmPackages.clang-tools
        ];
      };
    };
}
