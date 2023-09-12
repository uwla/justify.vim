" ------------------------------------------------------------------------------
" title: justipy.vim
" description: Vim plugin for justify aligning plain text
" date: September 11, 2023
" ------------------------------------------------------------------------------

if exists("g:justipy_loaded")
  finish
endif
let g:justipy_loaded = 1

if !exists("g:justipy_path")
  let g:justipy_path = "~/.local/share/vim_justipy/justify"
endif

if !exists("g:justify_cmd")
  if empty(glob(g:justipy_path))
    let s:justipy_url = "https://raw.githubusercontent.com/uwla/justipy/master/justify.py"
    echo "downloading python script to justify text"
    silent execute '!curl -Lo ' . g:justipy_path . ' --create-dirs ' . s:justipy_url
    silent execute '!chmod +x ' . g:justipy_path
  endif
  let g:justipy_cmd = g:justipy_path
endif

silent command! -range=% Justify execute '<line1>,<line2>!' . g:justipy_cmd
