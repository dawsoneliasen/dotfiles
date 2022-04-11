if [ -f ~/.activate_ohmyzsh ]; then
    source ~/.activate_ohmyzsh
fi
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# make sure homebrew is available
eval "$(/opt/homebrew/bin/brew shellenv)"

# make sure pyenv is available
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"

# make sure brew installation of python3.8 is first on the path;
# so that the system installation of python3.8 is avoided.
# this was necessary to install numpy and pandas natively.
# (commented out since pyenv is being used instead)
# export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
#
# make sure brew installation of vim is first on the path
export PATH="/opt/homebrew/opt/vim/bin:$PATH"

# some M1 compatibility fixes
export OPENBLAS="$(brew --prefix openblas)"
export NPY_DISTUTILS_APPEND_FLAGS=1
export HDF5_DIR=/opt/homebrew/Cellar/hdf5/1.12.1

# QOL settings
fignore=(egg-info)
export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dawson/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dawson/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dawson/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dawson/google-cloud-sdk/completion.zsh.inc'; fi
