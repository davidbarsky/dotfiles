# fenv
set fish_function_path $fish_function_path ~/.config/fish/functions/plugin-foreign-env/functions

# amazon
set -x PATH $PATH ~/.toolbox/bin

# rust
source $HOME/.cargo/env

# pipsi
set -x PATH $PATH ~/.local/bin

# editors
set -gx EDITOR vim

# go
set -x GOROOT ~/.asdf/installs/golang/1.10.2/go
set -x GOPATH ~/go
set -x PATH $PATH ~/go/bin

# fargate
set -x PATH $PATH ~/.fargate/bin

# cwlogs
set -x PATH $PATH ~/.cwlogs/bin

# aliases
alias e=nvim
alias g=git
alias s=rg
alias gu=gitup
alias bb=brazil-build
alias ls="exa --tree -L=1"
alias tree="exa -T -L 4"
alias tower="gittower"

# rbenv
status --is-interactive
and source (rbenv init -|psub)
source ~/.asdf/asdf.fish

function musl-build
    docker run -v cargo-cache:/root/.cargo -v "$PWD:/volume" --rm -it clux/muslrust cargo build --release
end

[ -s "/Users/dbarsky/.jabba/jabba.fish" ]
and source "/Users/dbarsky/.jabba/jabba.fish"

# nix
fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
set -x PATH $PATH ~/.nix-profile/bin/

# pyenv
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)
# THEME PURE #
set fish_function_path /Users/dbarsky/.config/fish/functions/theme-pure/functions/ $fish_function_path
