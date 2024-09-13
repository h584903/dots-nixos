{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./autocommands.nix
    ./completion.nix
    ./keymappings.nix
    ./options.nix
    ./plugins
    #./todo.nix
  ];

  home.shellAliases.v = "nvim";
}
