function Run()
    local filetype = vim.fn.expand("%:e")
    if filetype == 'py' then
        vim.cmd("!python3 %")
    elseif filetype == 'c' then
	vim.cmd("!gcc % -o output && ./output")
    elseif filetype == 'rs' then
	vim.cmd("!rustc % && ./output")
    elseif filetype == 'go' then
	vim.cmd("!go run %")
    else
        print("Unsupported language..")
    end
end
vim.cmd("command! Run lua Run()")
