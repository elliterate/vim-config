set nocompatible

" Load pathogen plugins
execute pathogen#infect()

syntax on
filetype plugin indent on

" Load init files
runtime! init/**.vim

" Load user overrides
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
