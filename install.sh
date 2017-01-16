#!/bin/bash -e

# Get the directory of this script, regardless of where it is called from.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ensure modules are up-to-date.
(
  cd $DIR
  git submodule update --init
)

function symlink {
  local target="$1"
  local destination="$2"

  if [ -L $destination ]; then
    if [ "$( readlink $destination )" != "$target" ]; then
      # Backup an existing destination symlink that links to something else.
      mv -f $destination $destination.bak
    fi
  elif [ -e $destination ]; then
    # Backup an existing non-symlink.
    mv -f $destination $destination.bak
  fi

  # Create the symlink.
  ln -nfs $target $destination
}

symlink "$DIR" "$HOME/.vim"
symlink "$HOME/.vim/vimrc" "$HOME/.vimrc"
