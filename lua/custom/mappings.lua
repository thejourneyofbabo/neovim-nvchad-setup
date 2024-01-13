local M = {}

M.general = {
  n = {
    ["C-h"] = {"<cmd> TmuxNvigateLeft<CR>", "window left"},
    ["C-l"] = {"<cmd> TmuxNvigateRight<CR>", "window right"},
    ["C-j"] = {"<cmd> TmuxNvigateDown<CR>", "window down"},
    ["C-k"] = {"<cmd> TmuxNvigateUp<CR>", "window up"},
  }
}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
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
