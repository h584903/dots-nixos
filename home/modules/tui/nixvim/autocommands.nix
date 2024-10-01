{
  programs.nixvim.autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }

    # Open help in a vertical split
    {
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }

    # Enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "tex"
        "latex"
        "markdown"
      ];
      command = "setlocal spell spelllang=en";
    }
    {
      event = "FileType";
      pattern = [
        "nix"
      ];
      command = "set shiftwidth=2|set tabstop=2";
    }
    {
      event = "FileType";
      pattern = [
        "md"
      ];
      command = "set wrap";
    }
  ];
}
