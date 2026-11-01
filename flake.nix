{
	description = "Flake for writing thesis";

	inputs.nixpkgs.url = "github:nixos/nixpkgs/release-26.05";

	outputs = { nixpkgs, ... }: let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {
		devShells.${system} = {
			latex = pkgs.mkShell {
				buildInputs = with pkgs; [ texliveFull ];
			};
		};
	};
}
