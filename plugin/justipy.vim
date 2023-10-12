" ------------------------------------------------------------------------------
" title: justipy.vim
" description: Vim plugin for justify aligning plain text
" date: September, 2023
" ------------------------------------------------------------------------------

if exists("g:justipy_loaded")
  finish
endif
let g:justipy_loaded = 1

if !exists("g:justipy_path")
  let g:justipy_path = "~/.local/share/vim_justipy/justify"
endif

function! JustifyUpdate()
    let s:justipy_url = "https://raw.githubusercontent.com/uwla/justipy/master/justify.py"
    echo "JUSTIPY: downloading latest python script to justify text"
    silent execute '!curl -Lo ' . g:justipy_path . ' --create-dirs ' . s:justipy_url
    silent execute '!chmod +x ' . g:justipy_path
    echo "JUSTIPY: script downloaded! This message won't show again unless you explicitly update it"
endfunction

if !exists("g:justify_cmd")
  if empty(glob(g:justipy_path))
    echo "JUSTIPY: g:justify_cmd not set and script not present at default path, so it will be downloaded"
    call JustifyUpdate()
  endif
  let g:justipy_cmd = g:justipy_path
endif

if !exists("g:justipy_linewidth")
  let g:justipy_linewidth = 80
endif


command JustifyUpdate call JustifyUpdate()
silent command! -nargs=? -range=% Justify execute '<line1>,<line2>!' . g:justipy_cmd . ' -w ' ('<args>' ? '<args>' : g:justipy_linewidth)

if exists("g:justipy_mappings")
  if g:justipy_mappings == 1
    nmap <M-j> vip:Justify<CR><CR>
    vmap <M-j> :Justify<CR><CR>
  endif
endif
