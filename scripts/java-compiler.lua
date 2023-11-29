
local M = {}

  function M.compileJavaProject()
    -- Get the path to the Java project directory
    local javaProjectPath = vim.fn.expand('%:p:h')

    -- Build the command to compile the Java project
    local compileCommand = 'javac -d ' .. javaProjectPath .. '/bin ' .. javaProjectPath .. '/src/*.java'

    -- Execute the compile command and get the output
    local compileOutput = vim.fn.systemlist(compileCommand)

    -- Clear any existing output buffer
    vim.cmd('silent! bwipeout! JavaCompileOutput')

    -- Open a new buffer to display the compile output
    vim.cmd('silent! new JavaCompileOutput')
    vim.api.nvim_buf_set_lines(0, 0, -1, false, compileOutput)

    -- Set the buffer to read-only
    vim.api.nvim_buf_set_option(0, 'modifiable', false)

    -- Check the exit code and display a notification
    if vim.v.shell_error == 0 then
      -- Compilation successful
      vim.notify("Java project compiled successfully")
      vim.cmd('silent! bwipeout! JavaCompileOutput')
      -- Open a vertical terminal running the compiled class
      vim.cmd('split | terminal java -cp ' .. javaProjectPath .. '/bin/Main.class')
    else
      -- Compilation failed
      vim.notify("Java project compilation failed")
    end
  end

return M
