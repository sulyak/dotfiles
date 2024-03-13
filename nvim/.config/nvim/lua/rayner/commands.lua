local cmd = vim.api.nvim_create_user_command

-- yes please
cmd('WQ', 'wq', {bang=true})
cmd('Wq', 'wq', {})
cmd('Wa', 'wa', {})
cmd('WA', 'wa', {bang=true})
cmd('W', 'w', {bang=true})
cmd('Q', 'q', {bang=true})
