local hour = tonumber(os.date('%H'))

if hour >= 8 and hour < 18 then
  vim.cmd('colorscheme catppuccin')
else
  vim.cmd('colorscheme substrata')
end
