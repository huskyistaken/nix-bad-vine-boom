To reproduce:

```
$ nix repl
> x = builtins.getFlake "<absolute path to this folder>"
> x.outputs.nixosConfigurations.conf.config.nixpkgs.config.permittedInsecurePackages
```
