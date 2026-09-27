-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Run Java program in Neovim with <leader>java
vim.keymap.set(
  "n",
  "<leader>java",
  ":!cd %:p:h && javac % && java -cp . %:t:r < input.txt > output.txt<CR>",
  { noremap = true, silent = true }
)

-- Run C++ program in Neovim with <leader>cpp
vim.keymap.set(
  "n",
  "<leader>cpp",
  ":!cd %:p:h && g++ -std=c++20 -O2 -Wall % -o %:t:r && ./%:t:r < input.txt > output.txt<CR>",
  { noremap = true, silent = true }
)
