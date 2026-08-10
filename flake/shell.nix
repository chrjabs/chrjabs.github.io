{
  perSystem = { pkgs, ... }: {
    devShells.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        bundix
        ruby
        gnumake
      ];
      shellHook = ''
        bundle install
      '';
    };
  };
}
