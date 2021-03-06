" Filename: Base2Tone_Morning.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Morning.vim)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)
" Info: http://base2t.one/
" License: MIT License

let s:cuicolors = {
      \ 'base03': [ '8', '236   ', 'DarkGray' ],
      \ 'base02': [ '0', '237   ', 'Black' ],
      \ 'base01': [ '10', '245   ', 'LightGreen' ],
      \ 'base00': [ '11', '246   ', 'LightYellow' ],
      \ 'base0':  [ '12', '248   ', 'LightBlue' ],
      \ 'base1':  [ '14', '250   ', 'LightCyan' ],
      \ 'base2': [ '7', '117   ', 'LightGray' ],
      \ 'base3': [ '15', '255   ', 'White' ],
      \ 'yellow': [ '3', '188   ', 'DarkYellow' ],
      \ 'orange': [ '9', '249   ', 'LightRed' ],
      \ 'red': [ '1', '18    ', 'DarkRed' ],
      \ 'magenta': [ '5', '33    ', 'DarkMagenta' ],
      \ 'violet': [ '13', '21    ', 'LightMagenta' ],
      \ 'blue': [ '4', '27    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '234   ', 'DarkCyan' ],
      \ 'green': [ '2', '136   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Morning uses to determine which set of colors
" to use.
let s:Base2Tone_Morning_termcolors = get(g:, 'Base2Tone_Morning_termcolors', 256)
if s:Base2Tone_Morning_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Morning_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#232834', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#31363f', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#707a8f', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#7e889a', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#8d95a5', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#a9afbc', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#b7c9eb', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#dee6f7', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#e5ddcd', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#c6b28b', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#063289', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#3d75e6', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#0b3c9d', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#1659df', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#2d2006', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#b29762', s:cuicolors.green[s:cuiindex] ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Base2Tone_Morning#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#232834', 236   ]
let s:base02 = [ '#31363f', 237   ]
let s:base01 = [ '#707a8f', 245   ]
let s:base00 = [ '#7e889a', 246   ]
let s:base0 = [ '#8d95a5', 248   ]
let s:base1 = [ '#a9afbc', 250   ]
let s:base2 = [ '#b7c9eb', 117   ]
let s:base3 = [ '#dee6f7', 255   ]
let s:yellow = [ '#e5ddcd', 188   ]
let s:orange = [ '#c6b28b', 249   ]
let s:red = [ '#063289', 18    ]
let s:magenta = [ '#3d75e6', 33    ]
let s:violet = [ '#0b3c9d', 21    ]
let s:blue = [ '#1659df', 27    ]
let s:cyan = [ '#2d2006', 234   ]
let s:green = [ '#b29762', 136   ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Base2Tone_Morning#palette = lightline#colorscheme#flatten(s:p)

