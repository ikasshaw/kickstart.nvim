Vim�UnDo�  ��cj ڸɣ,�+�J#cB��}Z!E�c�|   X   # conda activate base                              e�f�    _�                     $        ����                                                                                                                                                                                                                                                                                                                                                             e�b\     �               R   1. C:/ProgramData/anaconda3/etc/profile.d/conda.sh   conda activate base   #   .PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'   hPS1='\[\e[97;48;5;27;1m\] \u \[\e[0;48;5;226m\] \[\e[30m\]\w \[\e[0;38;5;41m\]${PS1_CMD1}\[\e[0m\] \\$ '       env=~/.ssh/agent.env       <agent_load_env() { test -f "$env" && . "$env" >|/dev/null; }       agent_start() {   	(   
	umask 077   	ssh-agent >|"$env"   )   . "$env" >|/dev/null   }       agent_load_env       O# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running   agent_run_state=$(   ssh-add -l >|/dev/null 2>&1   echo $?   )       ;if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then   	agent_start   	ssh-add   ;elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then   	ssh-add   fi       	unset env       	set -o vi       alias la="ls -a"   alias ll="ls -al"   alias ll.="ll -A"   alias vim="nvim"       alias gs='git status -sb'   alias gcc='git checkout'   alias gcm='git checkout master'   alias gaa='git add --all'   alias gc='git commit -m $2'   alias push='git push'   alias gpo='git push origin'   alias pull='git pull'   alias clone='git clone'   alias stash='git stash'   alias pop='git stash pop'   alias ga='git add'   alias gb='git branch'   �alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"   alias gm='git merge'       # Bash aliases   alias .='cd .'   alias ..='cd ..'   alias ...='cd ..\..\'   alias ....='cd ../../../'   alias .....='cd ../../../../'   +alias bashclear='echo "" > ~/.bash_history'   alias cls='clear'   2alias ls='ls -F --color=auto --show-control-chars'   alias ll='ls -l'   alias ll='ls -la'   alias lls='ls -la --sort=size'   alias llt='ls -la --sort=time'   alias rm='rm -iv'   alias work='cd /c/repos'   alias src="source ~/.bashrc"   alias cat="bat"       shopt -s autocd   shopt -s cdspell       shopt -s direxpand dirspell   shopt -s globstar    5�5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       e�c�    �          R      1. C:/ProgramData/anaconda3/etc/profile.d/conda.sh   conda activate base5��                                  F       J       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�dO    �          R    �         R    5��                                                 5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             e�f�    �      	   X      # conda activate base5��                         8                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�dM     �         R    �         R      # >>> conda initialize >>>   ># !! Contents within this block are managed by 'conda init' !!   <if [ -f '/c/ProgramData/anaconda3/Scripts/conda.exe' ]; then   N    eval "$('/c/ProgramData/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"   fi   # <<< conda initialize <<<5��                          4                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       e�c�     �          R      .onda activate base�          Q      .cuonda activate base5��                                2               �                                                5��