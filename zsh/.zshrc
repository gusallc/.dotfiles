# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.8
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#---ALIAS
#star mongodb
alias mongodb="mongod --port 27017 --dbpath /home/gusallc/database"

#PATHS
export SPRING_CLI=/home/gusallc/GUSTAVO/TOOLS/spring-2.5.0-SNAPSHOT/bin
export PATH=$PATH:/usr/local/bin:${SPRING_CLI}



#plugins nnn
#export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;c:copier;j:autojump'
export NNN_PLUG='c:copier;j:autojump'
export NNN_COLORS='4231'


#jump
eval "$(jump shell zsh)"

neofetch
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

