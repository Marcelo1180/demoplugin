# https://github.com/JarrodCTaylor/vim-plugin-starter-kit/wiki/Interactions-with-the-buffer
import vim


def modify_buf():
    vim.current.buffer[0] = "Changed first line of buffer"
    vim.current.buffer.append("Adding a new line")


modify_buf()
