# vimrc

1. Install Vim-Plug

2. Add FullScreen DLLS
https://vi.stackexchange.com/questions/1937/how-do-i-get-gvim-to-start-maximised-in-windows

In alternative to the maximized window, why do not gain more space for a full vim multiwindows editing experience with an autostart FULL SCREEN mode? ;-)

FULL SCREEN screenshot of the final result (= ALL THE VIDEO pixels capacity): video full screen screenshot

In my opinion that's better than a windows maximize: a complete FULL SCREEN (as I used to do with puTTY with ALT-Enter when editing on remote unix terminal...)

I explain how to:

Step 1

Install the excellent beautiful utility to allow full screen use in gvim on Windows:

https://github.com/derekmcloughlin/gvimfullscreen_win32/tree/master

You have to download DLL file gvimfullscreen.dll and put it in the same directory where gvim.exe is ($VIM/vim74 with gVim release 7.4). To download the DLL (without using git):

https://github.com/derekmcloughlin/gvimfullscreen_win32/raw/master/gvimfullscreen.dll

Step 2

Edit .vimrc file (inside vim: :e $HOME/.vimrc), inserting these commands to autostart full screen and allowing a F11 function key to toggle modes among 3 states: full screen, window maximized, original/default windows size:

"run the command immediately when starting vim
autocmd VimEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)

" activate/deactivate full screen with function key <F11>  
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
Step 3

Edit .gvimrc file (inside vim: :split $HOME/.gvimrc) inserting these commands to avoid menu bar and useless stuff:

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

3. Make the .gvimrc file as step 2 explains

4. Install Plugins with :PlugInstall

5. Install Powerline Fonts with PowerShell: 
https://medium.com/@slmeng/how-to-install-powerline-fonts-in-windows-b2eedecace58
https://github.com/powerline/fonts
Execute the "fonts/install.ps1" file in "Admin" PowerShell with Set-ExecutionPolicy "Bypass"

