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
  -- {
  -- 'mrcjkb/rustaceanvim',
  -- version = '^4', -- Recommended
  -- lazy = false, -- This plugin is already lazy
  -- },
  {
      "kdheepak/lazygit.nvim",
      cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
      },
      -- optional for floating window border decoration
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      -- setting the keybinding for LazyGit with 'keys' is recommended in
      -- order to load the plugin when the command is run for the first time
      keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
      }
  },
  {
    'saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    config = function()
        require('crates').setup()
    end,
  },
  {
    "xiyaowong/transparent.nvim",
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
  }
