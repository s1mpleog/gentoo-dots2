# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="gozilla"


plugins=(git zsh-autosuggestions zsh-syntax-highlighting history-substring-search kitty)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export TERM='xterm-256color'

alias grep='grep --color=auto'

#nitch

alias fetch='/home/simple/.config/chadwm/scripts/fetch'

export LANG=en_US.UTF-8

export LIBVA_DEVICE=/dev/dri/renderD128

export XCURSOR_PATH="/usr/share/cursors/xorg-x11/"

#alias vainfo='vainfo --display drm --device /dev/dri/renderD128'

eval "$(zoxide init zsh)"

alias cd='z'

alias n='nvim .'

alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

alias update='doas emerge -av --update --newuse --deep @world'

alias settings='nvim ~/.config/hypr/configs/settings.conf'

alias configure-alac='nvim ~/.config/alacritty/alacritty.toml'

#alias neofetch='neofetch --ascii "/home/simple/.config/neofetch/logo"'
alias neofetch='neofetch --kitty --source ~/.config/neofetch/eldritch.png'

alias search='emerge --search'

alias zed='zedit'

alias mpv='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia mpv'

alias configure='cd ~/.config/hypr/ && nvim .'
alias clock='tty-clock -C 5 -c -D -b'

export EDITOR='zedit'

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--color=border:#313244,label:#cdd6f4"

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

#alias neofetch='printf '\n' && neofetch'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$HOME/go/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#evil
alias emacs='emacs -nw'
export PATH="$HOME/.config/emacs/bin:$PATH"

export PATH=$PATH:/home/simple/.spicetify

# bun completions
[ -s "/home/simple/.bun/_bun" ] && source "/home/simple/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
