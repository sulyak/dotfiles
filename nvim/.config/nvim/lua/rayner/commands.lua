local cmd = vim.api.nvim_create_user_command

-- yes please
cmd('WQ', 'wq', {})
cmd('Wq', 'wq', {})
cmd('Wa', 'wa', {})
cmd('WA', 'wa', {})
cmd('W', 'w', {})
cmd('Q', 'q', {})
