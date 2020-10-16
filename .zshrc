# --------------
# DAWSON'S ZSHRC
# --------------

# oh-my-zsh settings
export ZSH="/Users/dawson/.oh-my-zsh"
# select ZSH theme
ZSH_THEME="redzshift"
# set zsh custom folder
# ZSH_CUSTOM=/path/to/new-custom-folder
# plugins
plugins=(git)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
# aliases
# Note from oh-my-zsh:
#     Set personal aliases, overriding those provided by oh-my-zsh libs,
#     plugins, and themes. Aliases can be placed here, though oh-my-zsh
#     users are encouraged to define aliases within the ZSH_CUSTOM folder.
#     For a full list of active aliases, run `alias`.
alias v="vim"
alias activate="source venv/bin/activate"
alias linecount="find . -name '*.py' | xargs wc -l"
# set alias for dotfiles repo
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# Nick O'Dell requirements script
alias deduce-requirements ~/deduce_requirements.sh

# path settings
export PATH="/usr/local/opt/ruby/bin:${PATH}"
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
PYTHONPATH="${PYTHONPATH}:/Library/Frameworks/Python.framework/Versions/3.7/bin"
export PYTHONPATH

# vim settings
export TERM=xterm-256color
export VIMRUNTIME="/usr/local/share/vim/vim82"

source $ZSH/oh-my-zsh.sh

