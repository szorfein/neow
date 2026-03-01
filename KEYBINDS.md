# Neow Keybinds

Neow implements some Emacs keyboard shortcut, (not all).
I try to keep the Vi logic like the navigation with h,j,l,m so for example this change all Emacs shortcuts using the arrow keys with the key for Vi, same with '$' character for 'end line' instead of 'e'.

Also running 'M-x' to run command has no interest here, Vi use ':' instead.

## Indexes

- [Windows management](#windows_management)

## Windows Management

Emacs use:

| key | binding | purpose                   |
| --- | ------- | ------------------------- |
| C-x | 0       | deletes the active window |
| C-x | 1       | deletes other windows     |
| C-x | 2       | split window bellow       |
| C-x | 3       | split window right        |
| C-x | o       | switch active window      |

Neow use:

| key | binding | purpose                   |
| --- | ------- | ------------------------- |
| C-x | 0       | deletes the active window |
| C-x | 1       | deletes other windows     |
| C-x | 2       | split window bellow       |
| C-x | 3       | split window right        |
| S   | j,k,l,m | go in cardinal            |

## Notes on [C-c]

Neow use [vim zettel](https://github.com/michal-h21/vim-zettel)

| key | binding | purpose    |
| --- | ------- | ---------- |
| C-c | nn      | New note   |
| C-c | nf      | Find notes |

## Links

- Vi Cheat Sheet: https://vim.rtorr.com/
