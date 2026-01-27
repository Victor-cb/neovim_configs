-- Telescope
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { desc = "Resume" }
)

-- DAP
local dap = require("dap")
local dapui = require("dapui")

vim.keymap.set(
  "n",
  "<leader>db",
  "<cmd>DapToggleBreakpoint<CR>",
  { desc = "Add breakpoint at line" }
)
vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {
  desc = "Toggle breakpoint",
})
vim.keymap.set("n", "<leader>dc", dap.continue, {
  desc = "Continue",
})
vim.keymap.set("n", "<leader>dr", dap.repl.open, {
  desc = "Inpect",
})
vim.keymap.set("n", "<leader>dk", dap.terminate, {
  desc = "Kill",
})
vim.keymap.set("n", "<leader>dso", dap.step_over, {
  desc = "Step Over",
})
vim.keymap.set("n", "<leader>dsi", dap.step_into, {
  desc = "Step Into",
})
vim.keymap.set("n", "<leader>dsu", dap.step_out, {
  desc = "Step Out",
})
vim.keymap.set("n", "<leader>dl", dap.run_last, {
  desc = "Run last",
})


-- DAP UI
vim.keymap.set("n", "<leader>duu", dapui.open, {
  desc = "open ui",
})
vim.keymap.set("n", "<leader>duc", dapui.close, {
  desc = "close ui",
})


vim.keymap.set(
  "n",
  "<leader>dr",
  "<cmd>DapContinue<CR>",
  { desc = "Start or continue the debugger" }
)


vim.keymap.set("n", "<leader>da", function()
  local file = vim.fn.input("C++ file to compile: ", vim.fn.expand("%"))
  if file == "" then
    return
  end

  local cmd = string.format('clang++ --debug "%s" -o main', file)
  vim.cmd("!" .. cmd)
end, { desc = "Compile C++ file with clang++" })
