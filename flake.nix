{
  description = "Nix bad 😱";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs = { self, nixpkgs }: {
    nixosConfigurations.conf = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./module1.nix
        ./module2.nix
      ];
    };
  };
}
