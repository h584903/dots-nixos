{
  programs.nixvim = {
    # files."after/ftplugin/norg.lua" = {
    #   localOpts.conceallevel = 1;
    #
    #   keymaps = [
    #     {
    #       mode = "n";
    #       key = "<C-n>";
    #       action = ":Neorg toc<CR>";
    #       options.silent = true;
    #     }
    #   ];
    # };

    plugins.neorg = {
      enable = false; # TODO re-enable when neorg is fixed

      modules = {
        "core.defaults" = { __empty = null; }
        # "core.keybinds".config.hook.__raw = ''
        #   function(keybinds)
        #     keybinds.unmap('norg', 'n', '<C-s>')
        #
        #     keybinds.map(
        #       'norg',
        #       'n',
        #       '<leader>c',
        #       ':Neorg toggle-concealer<CR>',
        #       {silent=true}
        #     )
        #   end
        # '';

        "core.dirman".config.workspaces = {
          notes = "~/notes";
        };

        "core.concealer".__empty = null;
        "core.completion".config.engine = "nvim-cmp";
        "core.qol.toc".config.close_after_use = true;
      };
    };
  };
}
