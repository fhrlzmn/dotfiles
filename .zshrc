if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git adb docker node npm python zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# Edit .zshrc and add this line
export PATH=$HOME/.config/rofi/scripts:$PATH

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# User configuration
export PNPM_HOME="/home/fhrlzmn/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# hyprshot
export HYPRSHOT_DIR="$HOME/Pictures/hyprshot"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/fhrlzmn/Tools/google-cloud-sdk/path.zsh.inc' ]; then . '/home/fhrlzmn/Tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/fhrlzmn/Tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/fhrlzmn/Tools/google-cloud-sdk/completion.zsh.inc'; fi
