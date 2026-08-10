{ inputs, ... }:
{
  imports = [
    inputs.treefmt-nix.flakeModule
  ];

  perSystem =
    { ... }:
    {
      treefmt = {
        settings.global.on-unmatched = "error";
        programs = {
          # Spellchecking
          typos.enable = true;
          # Nix
          deadnix.enable = true;
          nixfmt.enable = true;
          # YAML
          yamlfmt.enable = true;
          # TOML
          taplo.enable = true;
          # Github actions
          actionlint.enable = true;
          # Sorting lists
          keep-sorted.enable = true;
        };
      };
    };
}
