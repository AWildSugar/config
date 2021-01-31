" Not if in vscode
if !exists('g:vscode')
    " Plugins will be downloaded under the specified directory.
    call plug#begin('~/.vim/plugged')

    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
      Plug 'Shougo/deoplete-clangx'
      Plug 'mhartington/oceanic-next'
      Plug 'honza/vim-snippets'
      Plug 'BeneCollyridam/futhark-vim'
      Plug 'JuliaEditorSupport/julia-vim'
      Plug 'rhysd/vim-clang-format'
      Plug 'sbdchd/neoformat'
      Plug 'cdelledonne/vim-cmake'
      Plug 'ludovicchabant/vim-gutentags'
      Plug 'meck/vim-brittany'
      Plug 'neovimhaskell/haskell-vim'
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1

    " List ends here. Plugins become visible to Vim after this call.
    call plug#end()

    " Remap ESC
    inoremap jk <ESC>

    set encoding=utf-8
    set clipboard=unnamedplus

    " Tabs
    set tabstop=4 shiftwidth=4
    set expandtab

    " Scratch Buffer
    set completeopt-=preview

    "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
    "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
    "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
    if (empty($TMUX))
      if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif
      "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
      "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
      " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
      if (has("termguicolors"))
        set termguicolors
      endif
    endif

    syntax on
    colorscheme OceanicNext

    " cscope 
    source ~/.config/nvim/cscope.vim
end

