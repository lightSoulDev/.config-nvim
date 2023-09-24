-- local clip_path = '/mnt/c/Windows/System32/clip.exe'  -- change this path according to your mount point
-- if vim.fn.executable(clip_path) then
--     vim.api.nvim_exec([[
--         augroup WSLYank
--         autocmd!
--         autocmd TextYankPost * if v:event.operator ==# 'y' | call system(']] .. clip_path .. [[', @0) | endif
--         augroup END
--     ]], false)
-- end

require("lightsoul")
