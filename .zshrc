# Prompt
export CLICOLOR=1

# Language & locale
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# History
HISTSIZE=5000
HISTFILESIZE=10000

# Search history
if [[ $- == *i* ]]
then
    bindkey "^[[A" history-beginning-search-backward
    bindkey "^[[B" history-beginning-search-forward
fi

# Editor
export EDITOR=/usr/bin/nano

# Better ls
export BLOCKSIZE=1k

# Aliases
alias ll='ls -FGlAhp'

# iterm2 integration
# https://www.iterm2.com/documentation-shell-integration.html
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add pip3 --user modules to PATH
export PATH=~/Library/Python/3.7/bin:$PATH

# virtualenvwrapper
# https://virtualenvwrapper.readthedocs.io/en/latest/
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Add Postgres tools to PATH
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# Add gem --user-install to PATH
export PATH=~/.gem/ruby/2.3.0/bin:$PATH

# Git prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [ -f ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi

function prompt_command() {

    # Check for existence of .venv file in any new directory and load if so
    if [ "$PWD" != "$MYOLDPWD" ]; then
        MYOLDPWD="$PWD"
        test -e .venv && workon `cat .venv`
    fi

}
setopt PROMPT_SUBST
PS1='%F{yellow}$(__git_ps1 "[%s] ")%F{blue}%c %F{green}\$ %F{white}'
precmd() { prompt_command; }

## The next line updates PATH for the Google Cloud SDK.
#if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '~/Downloads/google-cloud-sdk/path.bash.inc'; fi

## The next line enables shell command completion for gcloud.
#if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '~/Downloads/google-cloud-sdk/completion.bash.inc'; fi

## Google Cloud credentials
#export GOOGLE_APPLICATION_CREDENTIALS="~/.googlecloud/credentials.json"

eval "$(rbenv init -)"
