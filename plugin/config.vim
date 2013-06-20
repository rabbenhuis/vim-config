" +----------------------------------------------------------------------------
" |
" | *Personal* configuration for the editor Vim (Vi IMproved)
" |
" | Copyright (C) 2013 by Richard Abbenhuis
" |
" | Permission is hereby granted, free of charge, to any person obtaining a 
" | copy of this software and associated documentation files (the "Software"), 
" | to deal in the Software without restriction, including without l> imitation
" | the rights to use, copy, modify, merge, publish, distribute, sublicense, 
" | and/or sell copies of the Software, and to permit persons to whom the 
" | Software is furnished to do so, subject to the following conditions:
" |
" | The above copyright notice and this permission notice shall be included in
" | all copies or substantial portions of the Software.
" |
" | THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" | IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
" | FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" | AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
" | LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
" | FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
" | DEALINGS IN THE SOFTWARE.
" |
" | Description:
" |
" | The config.vim file contains my *personal* runtime configuration settings 
" | to initialize Vim when it starts. The file is located in my 
" | $HOME/.vim/bundle/vim-config/ directory
" |
" | Author:	Richard Abbenhuis (richard@abbenhuis.net)
" |
" | Created:	19 Jun 2013
" |
" | Modified:
" |
" | Version:	
" |
" +----------------------------------------------------------------------------
" | Changes:
" |
" | Date	Author		Description
" | -----------	---------------	-----------------------------------------------
" |
" |
" +----------------------------------------------------------------------------

" Avoid loading the script twice and make it possible to avoid loading the
" script al all.
"
if exists('g:loaded_config') || &compatible
	finish
else
	let g:loaded_config = 1
endif


" +----------------------------------------------------------------------------
" |
" | General
" |
" +----------------------------------------------------------------------------
" If +menu and +multi_lang features are available, then set the language of the
" menu to English
"
if has('menu') && has('multi_lang')
	set langmenu=none
endif

" If the +autocmd feature is available, then enable loading plugin and indent
" files for specific file types.
" 
if has('autocmd')
	filetype plugin on
	filetype indent on
endif

" If the +syntax feature is available and syntax highlighting is not already
" switched on, then enable syntax highlighting.
"
if has('syntax') && !exists('g:syntax_on')
	syntax enable
endif


" Automatically re-read the file when it is changed outside Vim.
"
set autoread


" +----------------------------------------------------------------------------
" |
" | Vim user interface settings
" |
" +----------------------------------------------------------------------------
" Minimal number of screen lines to keep above and below the cursor when moving
" vertically.
"
set scrolloff=7

" If the +wildmenu feature is available, then enable command-line completion
" in enhanced mode.
"
if has('wildmenu')
	set wildmenu
endif

" If the +wildignore feature is available, then ignore the following file
" and/or directory names.
"
if has('wildignore')
	set wildignore=*.o,*.obj
endif

" If the +cmdline_info feature is available, then show the ruler and 
" show (partial) command in the last line of the screen.
"
if has('cmdline_info')
	set ruler
	set showcmd
endif

" If the +statusline feature is available, then
" Set that the last window will always have a statusline
" Set the statusline, broken down into easily includable segments:
" filename, options, filetype, current directory and right aligned file
" navigation information.
"
if has('statusline')
	set laststatus=2

	set statusline=%c%f\
	set statusline+=%w%h%m%r
	set statusline+=\ [%{&ff}/%Y]
	set statusline+=\ [%{getcwd()}]
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

" If the +cmdline_info and +statusline features are available, then set the
" content of the ruler string.
"
if has('cmdline_info') && has('statusline')
	set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
endif


" +----------------------------------------------------------------------------
" |
" | Color and fonts
" |
" +----------------------------------------------------------------------------
" Load the dark background mode of Solarized
"
set background=dark
colorscheme solarized

