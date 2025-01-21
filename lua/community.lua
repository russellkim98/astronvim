-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.nordic-nvim" },
  { import = "astrocommunity.completion.codeium-vim", enabled = false },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "m",
    },
  },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.motion.nvim-surround", enabled = true },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- import/override with your plugins folder
}
