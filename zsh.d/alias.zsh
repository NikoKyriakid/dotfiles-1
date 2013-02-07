#alias settings

alias rm='rm -i'
alias mv='mv -i'
alias rr='rm -ri'
alias rrf='rm -rf'

alias ls='ls --color -F'

#start vim as vi
alias vi='vim'

echo
echo ">> alias settings"
echo "command 'rr' is used as 'rm -ri' "
echo "command 'rrf' is used as 'rm -rf' "
echo

#tmux execute as 256colors-terminal
alias tmux='tmux -2'

alias :q='exit'

#tweet as @nepiadeath via nepia
#this requires ".twit_script.py" in home
#alias twip='zenity --entry | python $HOME/.twit_script.py'
alias twip='python $HOME/.twit_script.py'
echo "You can tweet"
echo "if you use 'twip' command. "
echo
echo "======================================== "
echo

