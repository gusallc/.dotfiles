unmap ,

" Yank to system clipboard
set clipboard=unnamed

" Quit insert mode
imap jj <Esc>
imap kk <Esc>

" Move to the start of line
nmap H ^

" Move to the end of line
nmap L $

" Have j and k navigate visual lines rather than logical ones - normal mode
nmap j gj
nmap k gk
" Have j and k navigate visual lines rather than logical ones - visual mode
vmap j gj
vmap k gk

nmap <C-n> :findAndSelectNextInclusive

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
exmap tabnext obcommand cycle-through-panes:cycle-through-panes
nmap gt :tabnext
exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
nmap gT :tabprev

exmap togglefold obcommand editor:toggle-fold
nmap tt :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap tU :unfoldall

exmap foldall obcommand editor:fold-all
nmap tA :foldall

exmap openlink obcommand editor:open-link-in-new-leaf
nmap gd :openlink

" [g]oto [f]ile (= Follow Link under cursor)
exmap followLinkUnderCursor obcommand editor:follow-link
nmap gi :followLinkUnderCursor

" mapping next/previous heading
exmap nextHeading jsfile mdHelpers.js {jumpHeading(true)}
exmap prevHeading jsfile mdHelpers.js {jumpHeading(false)}
nmap ,> :nextHeading
nmap ,< :prevHeading

" mapping vs/hs as workspace split
exmap vs obcommand workspace:split-vertical
exmap hs obcommand workspace:split-horizontal
nmap ,wsr :vs
nmap ,wsd :hs

" window controls
exmap closeOthers obcommand workspace:close-others
nmap ,qo :closeOthers

exmap close obcommand workspace:close
nmap <C-w> :close
exmap close obcommand workspace:undo-close-pane
" nmap <C-> :close
nmap ,Q :close

" Blockquote
exmap toggleBlockquote obcommand editor:toggle-blockquote
nmap ,tb :toggleBlockquote

" complete a Markdown task
exmap toggleTask obcommand editor:toggle-checklist-status
nmap ,tt :toggleTask

exmap back obcommand app:go-back
nmap H :back

exmap reload obcommand app:reload

" Selecciona el archivo actual para y ejecuta la app asociada por defecto con la extensión
" ejemplo: db.sql -> abrirá por defecto en SqlServer (el predeterminado por windows).
exmap openFile obcommand open-with-default-app:open

" Seleccionar el archivo en la vista del proyecto
exmap revealActiveFile obcommand file-explorer:reveal-active-file
nmap <C-b> :revealActiveFile

exmap quickViewLink obcommand obsidian-hover-editor:open-link-in-new-popover
nmap gh :quickViewLink