-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

-- Adicionando a configuração da numeração de linhas
vim.opt.number = true           -- Ativa a numeração absoluta
vim.opt.relativenumber = false  -- Desativa a numeração relativa

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
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,  -- Mostra arquivos ocultos
          },
        }
      })
    end,
  }
}
