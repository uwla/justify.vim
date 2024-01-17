" ------------------------------------------------------------------------------
" title: justify.vim
" description: Vim plugin for justify aligning plain text
" date: September, 2023
" ------------------------------------------------------------------------------

if exists("g:justify_loaded")
  finish
endif
let g:justify_loaded = 1

if !exists("g:justify_path")
  let g:justify_path = "~/.local/share/vim_justify/justify.py"
endif

function! JustifyUpdate()
    let s:justify_url = "https://raw.githubusercontent.com/uwla/justify.py/master/justify.py"
    echo "JUSTIFY: downloading latest python script to justify text"
    silent execute '!curl -Lo ' . g:justify_path . ' --create-dirs ' . s:justify_url
    silent execute '!chmod +x ' . g:justify_path
    echo "JUSTIFY: script downloaded! This message won't show again unless you explicitly update it"
endfunction

if !exists("g:justify_cmd")
  if empty(glob(g:justify_path))
    echo "JUSTIFY: g:justify_cmd not set and script not present at default path, so it will be downloaded"
    call JustifyUpdate()
  endif
  let g:justify_cmd = g:justify_path
endif

if !exists("g:justify_linewidth")
  let g:justify_linewidth = 80
endif


command JustifyUpdate call JustifyUpdate()
silent command! -nargs=? -range=% Justify execute '<line1>,<line2>!' . g:justify_cmd . ' -w ' ('<args>' ? '<args>' : g:justify_linewidth)

if exists("g:justify_mappings")
  if g:justify_mappings == 1
    nmap <M-j> vip:Justify<CR><CR>
    vmap <M-j> :Justify<CR><CR>
  endif
endif
