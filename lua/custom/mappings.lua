local M = {}

M.general = {
  n = {
    ["C-h"] = {"<cmd> TmuxNvigateLeft<CR>", "window left"},
    ["C-l"] = {"<cmd> TmuxNvigateRight<CR>", "window right"},
    ["C-j"] = {"<cmd> TmuxNvigateDown<CR>", "window down"},
    ["C-k"] = {"<cmd> TmuxNvigateUp<CR>", "window up"},
    ["<LEADER>jd"] = {"<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "LSP definitions"},
    ["<LEADER>jv"] = {"<cmd>lua require'telescope.builtin'.lsp_definitions({jump_type='vsplit'})<CR>", "LSP definitions (vsplit)"},
    ["gd"] = {"<cmd>lua vim.lsp.buf.definition()<CR>", "LSP definition"},
    ["gdv"] = {"<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", "LSP definition (vertical split)"},
    ["gdh"] = {"<cmd>belowright split | lua vim.lsp.buf.definition()<CR>", "LSP definition (horizontal split)"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "upgrade_all_crates"
    }
  }
}


return M
