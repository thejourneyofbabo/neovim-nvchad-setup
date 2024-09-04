local M = {}

M.general = {
  n = {
    ["C-h"] = {"<cmd> TmuxNvigateLeft<CR>", "window left"},
    ["C-l"] = {"<cmd> TmuxNvigateRight<CR>", "window right"},
    ["C-j"] = {"<cmd> TmuxNvigateDown<CR>", "window down"},
    ["C-k"] = {"<cmd> TmuxNvigateUp<CR>", "window up"},
    --["<LEADER>jd"] = {"<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "LSP definitions"},
    --["<LEADER>jv"] = {"<cmd>lua require'telescope.builtin'.lsp_definitions({jump_type='vsplit'})<CR>", "LSP definitions (vsplit)"},
    ["gd"] = {"<cmd>lua vim.lsp.buf.definition()<CR>", "LSP definition"},
    ["gdv"] = {"<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", "LSP definition (vertical split)"},
    ["gdh"] = {"<cmd>belowright split | lua vim.lsp.buf.definition()<CR>", "LSP definition (horizontal split)"},

    -- Move the cursor up or down by 5 lines
    ["<leader>lj"] = {"7jzz", "Move cursor up by 5 lines"},
    ["<leader>lk"] = {"7kzz", "Move cursor down by 5 lines"},
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
    },
    ["<leader>dx"] = {
      "<cmd>DapTerminate<CR>",
      "Terminate debugger"
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

M.rust_map = {
  n = {
    ["<leader>k"] = {"<Cmd>lua require('rust-tools').hover_actions.hover_actions()<CR>", "Rust Run"},
    ["<leader>q"] = {"<Cmd>lua require('rust-tools').code_action_group.code_action_group()<CR>", "Rust Suggest"},
  }
}

return M
