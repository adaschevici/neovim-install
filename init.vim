"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set shell=/bin/zsh

" Set runtime path
""set rtp+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
set rtp+=$HOME/.local/share/nvim/autoload/
set rtp+=$HOME/.config/nvim/lang-snippets/
set rtp+=$HOME/.config/nvim/dein/repos/github.com/epilande/vim-react-snippets/UltiSnips/
set rtp+=$HOME/.config/nvim/dein/repos/github.com/honza/vim-snippets/UltiSnips/
set rtp+=$HOME/.pyenv/versions/local/bin/python3.7

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  " Plugins
  " Base plugins
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-sensible'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-unimpaired'
  Plug 'AndrewRadev/linediff.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
  Plug 'junegunn/fzf.vim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Theme and UI plugins
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'

  " Git related plugins
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mhinz/vim-signify'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " General language syntax plugins
  ""Plug 'vim-syntastic/syntastic'
  Plug 'w0rp/ale'

  " Snippet plugins
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'epilande/vim-react-snippets'

  " Language specific plugins
  " Syntax plugins for python
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  " Plug 'ncm2/ncm2-jedi'
  " Plug 'davidhalter/jedi-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ncm2/ncm2-coc'
  Plug 'ncm2/ncm2-racer'
  Plug 'ncm2/ncm2-ultisnips'

  " Commenting & brackets
  Plug 'scrooloose/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tmhedberg/SimpylFold'
  Plug 'Konfekt/FastFold'

  " Rest of language specifics plugins
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'fatih/vim-go'
  Plug 'vim-ruby/vim-ruby'
  Plug 'jimenezrick/vimerl'
  Plug 'rust-lang/rust.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'ianks/vim-tsx'
  Plug 'derekwyatt/vim-scala'
  Plug 'chrisbra/csv.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'dag/vim-fish'
  Plug 'ekalinin/Dockerfile.vim'

  " Prettyfiers
  Plug 'maksimr/vim-jsbeautify'
  Plug 'jasonshell/vim-svg-indent'
  " Productivity & debug tools
  " "Plug 'jremmen/vim-ripgrep'
  Plug 'mattn/emmet-vim'
  Plug 'racer-rust/vim-racer'
  Plug 'nvie/vim-flake8'

" Required:
call plug#end()

"" configures plugin manager and plugins
source ~/.config/nvim/base.vim
source ~/.config/nvim/plugins.vim
