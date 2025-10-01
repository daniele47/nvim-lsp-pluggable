-- enable builtin snippet support
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, { autotrigger = false })
    end,
})
-- keymaps are bad !!
-- vim.keymap.set({"i", "s"}, "<C-l>", function()
--     if vim.fn.pumvisible() == 0 then
--         return vim.snippet.jump(1)
--     end
-- end)
-- vim.keymap.set({"i", "s"}, "<C-h>", function()
--     if vim.fn.pumvisible() == 0 then
--         return vim.snippet.jump(-1)
--     end
-- end)
-- vim.keymap.set({"i", "s"}, "<C-k>", function()
--     vim.snippet.stop()
-- end)
