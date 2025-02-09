-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

-- Adicionando a configuração da numeração de linhas
---@type LazySpec
return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup {
        size = 20,
        open_mapping = [[<C-'>]],  -- Mapeia o CTRL + ' para abrir o terminal
        direction = "float",  -- Terminal no modo flutuante
      }
    end,
  }
}
