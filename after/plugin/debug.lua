local mason_dap = require("mason-nvim-dap")
local dap = require("dap")
--local ui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")

-- Dap Virtual Text
dap_virtual_text.setup()

mason_dap.setup({
	ensure_installed = { "cppdbg" },
	automatic_installation = true,
	handlers = {
		function(config)
			require("mason-nvim-dap").default_setup(config)
		end,
	},
})

-- Configurations
dap.configurations.c = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
  },
  {
    name = "Select and attach to process",
    type = "gdb",
    request = "attach",
    program = function()
       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    pid = function()
       local name = vim.fn.input('Executable name (filter): ')
       return require("dap.utils").pick_process({ filter = name })
    end,
    cwd = '${workspaceFolder}'
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'gdb',
    request = 'attach',
    target = 'localhost:1234',
    program = function()
       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}'
  },
}
-- Dap UI
--[[ui.setup()

vim.fn.sign_define("DapBreakpoint", { text = "🐞" })

dap.listeners.before.attach.dapui_config = function()
	ui.open()
end
dap.listeners.before.launch.dapui_config = function()
	ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end    command = os.getenv('HOME') '/.virtualenvs/tools/bin/python';
    args = { '-m', 'debugpy.adapter' };
    ]]
-- Keymaps

    vim.keymap.set('n', '<leader>d', function() return 0 end, { desc = "debugger keymaps"})

    vim.keymap.set('n', '<leader>dc', function() require('dap').continue() end, {desc = "continue"})
    vim.keymap.set('n', '<leader>ds', function() require('dap').step_over() end, { desc = "step over"})
    vim.keymap.set('n', '<leader>dS', function() require('dap').step_into() end, {desc = "step into"})
    vim.keymap.set('n', '<leader>dO', function() require('dap').step_out() end, { desc = "step out"})
    vim.keymap.set('n', '<Leader>dB', function() require('dap').toggle_breakpoint() end, {desc = "toggle breakpoint"})
    vim.keymap.set('n', '<Leader>db', function() require('dap').set_breakpoint() end, { desc = "set breakpoint"})
    vim.keymap.set('n', '<Leader>dl', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, {desc = " log breakpoint message"})
    vim.keymap.set('n', '<Leader>dR', function() require('dap').repl.open() end, { desc = "show recents"})
    vim.keymap.set('n', '<Leader>dr', function() require('dap').run_last() end, { desc = "run last"})
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end, { desc = "hover"})
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end, { desc = "preview"})
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end, { desc = "show frames"})
    vim.keymap.set('n', '<Leader>dc', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end, { desc = "show scopes"})
