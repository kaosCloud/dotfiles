
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enable thefuck 
eval $(thefuck --alias)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Theme
ZSH_THEME="robbyrussell"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	python
	macos
	command-not-found
	colorize
	fzf
	thefuck
	zsh-autosuggestions
	zsh-syntax-highlighting
	tmux
)

# Start tmux
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh


# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# -- Use fd instead of fzf --

export FZF_DEFAULT_OPS="--height 30%"
export FZF_DEFAULT_COMMAND="fd --no-hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh

alias vim="nvim"
# ----- Procs (better ps) -----
alias ps="procs"

# ----- Bat (better cat) -----
export BAT_THEME=TwoDark
alias cat="bat"

# ----- Eza (better ls) ------
alias ls="eza --long --icons --sort=name --no-user --git -T -L=2 --group-directories-last"

# ----- fzf-preview -----
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview' --walker-skip=.*"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}


# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
alias cdi="zi"

# Enable Starship prompt
eval "$(starship init zsh)"
