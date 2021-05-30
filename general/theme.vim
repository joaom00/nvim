hi Comment cterm=italic
let g:nvcode_termcolors=256

syntax on

" Shado Theme
colorscheme xshado

" Tokyonight Theme
"colorscheme tokyonight
"let g:tokyonight_style= "night"
"let g:tokyonight_italic_functions = 1
"let g:tokyonight_sidebars = ["qf", "vista_kind", "terminal", "packer"]
"let g:tokyonight_transparent = 1


" Checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
  endif