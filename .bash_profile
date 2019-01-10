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
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# Editor
export EDITOR=/usr/bin/nano

# Better ls
export BLOCKSIZE=1k

# Aliases
alias ll='ls -FGlAhp'

# Bash completion
# https://github.com/scop/bash-completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# iterm2 integration
# https://www.iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# pyenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# virtualenvwrapper
# https://virtualenvwrapper.readthedocs.io/en/latest/
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# Git prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
if [ -f ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi

function prompt_command() {

    # Check for existence of .venv file in any new directory and load if so
    if [ "$PWD" != "$MYOLDPWD" ]; then
        MYOLDPWD="$PWD"
        test -e .venv && workon `cat .venv`
    fi

    GITPROMPT=
    if type -p __git_ps1; then
        GIT_PS1_SHOWDIRTYSTATE=1
        GITPROMPT=$(__git_ps1 "%s")
    fi
    if [[ -n $GITPROMPT ]]; then
        GITPROMPT=$(echo -e "[${GITPROMPT}] ")
    fi

}
PS1="\[\e[93m\]\$GITPROMPT\[\e[0m\]\[\e[34m\]\W \[\e[92m\]\\$\[\e[m\] "
PROMPT_COMMAND=prompt_command
