#
# Antigen
#
source $HOME/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle z
antigen bundle git
antigen bundle sudo
antigen bundle extract
antigen bundle command-not-found

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting


# Load the theme.
antigen theme gnzh

# Tell Antigen that you're done.
antigen apply

export DEFAULT_USER=xukai
setopt no_nomatch

source $HOME/.bash_aliases

# zsh-autosuggestions settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
