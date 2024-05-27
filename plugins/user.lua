local palettes = {
  -- Everything defined under `all` will be applied to each style.
  all = {
    -- Each palette defines these colors:
    --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
    --
    -- These colors have 3 shades: base, bright, and dim
    --
    -- Defining just a color defines it's base color
  },
  carbonfox = {
    -- set background color 
    
  },
  }

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "maxmx03/solarized.nvim",
    name = "solarized"
  },
  {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy
  },
  {
    {
      "EdenEast/nightfox.nvim",
     -- set color blindness option 
      config = function()
        require("nightfox").setup({
          options = {
            colorblind = {
              enable = true,
              severity = {
                deutan = 1.0,
                -- protan = 0.5,
                -- tritan = 1,
              }
            }
          },
          palettes = palettes
      })
      end
    }
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
          groups = { -- table: default groups
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        }
      })
    end
  }
}
