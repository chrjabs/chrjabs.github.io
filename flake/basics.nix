{ inputs, ... }: {
  systems = [
    "x86_64-linux"
    "aarch64-linux"
    "aarch64-darwin"
  ];

  perSystem =
    {
      system,
      ...
    }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [ inputs.nur-packages.overlays.default ];
      };
    };
}
