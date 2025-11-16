# Lazyvim config

## run :checkhealth first to see what binaries to download (brew install fzf, treesitter-cli, etc...)

## colorshemes can be changed by changing file extention to .lua, eg. changing colorsheme.kanagawa to colorscheme.lua will change theme to kanagawa. Make sure to change existing .lua to something else

## Useful Keymaps

ctrl + a = copy all

te = tabedit

<tab> = tabnext return

s + <tab> = tabprev return

tw = tabclose return

ss = split window side by side

sv = split window up down

ctrl + j = diagnostics

# **Rename**

<leader> + cr = rename inc

# **Comments**

gcc = comment current line (in normal mode)

gc + {motion} = comment selected (normal mode)

gc = toggle comment (in visual mode)

# **Surround**

gsa  = Normal (n) & Visual (x) Add surrounding

T he command to wrap text in a new set of delimiters.

Normal Mode: You press gsa + {motion} + {surrounding}.

Example: gsa + iw (inner word) + " will wrap the word in double quotes: word → "word".

Visual Mode: Select text, then press gsa + {surrounding}.

gsd = Normal (n) Delete surrounding

The command to remove an existing set of delimiters around text.

You press gsd + {surrounding_id}.

Example: With the cursor on (word), press gsd + ). The result is word.

gsr = Normal (n) Replace surrounding

The command to change one set of delimiters to another.

You press gsr + {old_surrounding_id} + {new_surrounding}.

Example: With the cursor on (word), press gsr + ) + ]. The result is [word].

gsf = Normal (n) Find surrounding (to the right)

Moves the cursor to the opening part of the next surrounding of the type you specify (e.g., the next (). Useful for rapid navigation.

gsF = Normal (n) Find surrounding (to the left)

Similar to gsf, but moves the cursor to the opening part of the previous surrounding of the specified type.

gsh = Normal (n) Highlight surrounding Highlights the nearest surrounding of the specified type.

Useful for visually confirming which surrounding the subsequent actions (gsd, gsr) will operate on.

# **FZF Fuzzy Finder**

<Leader>ff = FzfLua files Find Files: Fuzzy-finds all files in the current project root directory ( respects .gitignore). This is your main file opener.

<Leader>fg = FzfLua live_grep Live Grep: Opens an interactive, project-wide text search. Uses ripgrep for speed. Results update instantly as you type.

<Leader>fb = FzfLua buffers Find Buffers: Lists all currently open buffers (files). Much faster than jumping through them one-by-one.

<Leader>fh = FzfLua help_tags Find Help: Fuzzy-finds Vim/Neovim help documentation tags.

<Leader>fc = FzfLua commands Find Commands: Fuzzy-finds all available Vim commands (e.g., :w, :q, p lugin commands).

<C-t> (Ctrl+T) = Open in New Tab Opens the selected file in a new Vim Tab.

<C-v> (Ctrl+V) = Open in VSplit Opens the selected file in a new Vertical Split.

<C-x> (Ctrl+X) = Open in Split Opens the selected file in a new Horizontal Split.

<C-q> (Ctrl+Q) = Select All & Quickfix Selects all currently filtered items and sends them to the Quickfix List. This is invaluable for bulk operations.

<C-r> (Ctrl+R) = Toggle Root Toggles between searching from the project root directory and the current working directory (cwd). (Custom mapping in LazyVim)

<Alt-h> = Toggle Hidden Toggles searching for files inside hidden directories (e.g., .git, .config).
