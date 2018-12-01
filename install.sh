#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $LN -sf "$1" "$2"
}
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/completions/asdf.fish" " "/local/home/dbarsky/.config/fish/completions/asdf.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/completions/kubectl.fish" " "/local/home/dbarsky/.config/fish/completions/kubectl.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/completions/rustup.fish" " "/local/home/dbarsky/.config/fish/completions/rustup.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/conf.d/omf.fish" " "/local/home/dbarsky/.config/fish/conf.d/omf.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/config.fish" " "/local/home/dbarsky/.config/fish/config.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/fish-kubectl-completions/LICENSE" " "/local/home/dbarsky/.config/fish/fish-kubectl-completions/LICENSE"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/fish-kubectl-completions/README.md" " "/local/home/dbarsky/.config/fish/fish-kubectl-completions/README.md"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/fish-kubectl-completions/kubectl.fish" " "/local/home/dbarsky/.config/fish/fish-kubectl-completions/kubectl.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/fishd.186590cff659" " "/local/home/dbarsky/.config/fish/fishd.186590cff659"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/fish_prompt.fish" " "/local/home/dbarsky/.config/fish/functions/fish_prompt.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/LICENSE" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/LICENSE"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/README.md" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/README.md"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.apply.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.apply.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.main.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.main.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.parse.after.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.parse.after.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.parse.before.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.parse.before.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.parse.diff.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.parse.diff.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/functions/fenv.parse.divider.fish" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/functions/fenv.parse.divider.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/test.py" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/test.py"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/plugin-foreign-env/test.sh" " "/local/home/dbarsky/.config/fish/functions/plugin-foreign-env/test.sh"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/LICENSE" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/LICENSE"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/README.md" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/README.md"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/fish_greeting.fish" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/fish_greeting.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/fish_prompt.fish" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/fish_prompt.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/fish_right_prompt.fish" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/fish_right_prompt.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/fish/functions/theme-sushi/fish_title.fish" " "/local/home/dbarsky/.config/fish/functions/theme-sushi/fish_title.fish"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/nvim/init.vim" " "/local/home/dbarsky/.config/nvim/init.vim"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/omf/bundle" " "/local/home/dbarsky/.config/omf/bundle"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/omf/channel" " "/local/home/dbarsky/.config/omf/channel"
handle_file_ln " "/local/home/dbarsky/.dotfiles/config/omf/theme" " "/local/home/dbarsky/.config/omf/theme"
handle_file_ln " "/local/home/dbarsky/.dotfiles/gitconfig" " "/local/home/dbarsky/.gitconfig"
handle_file_ln " "/local/home/dbarsky/.dotfiles/gitignore_global" " "/local/home/dbarsky/.gitignore_global"
handle_file_ln " "/local/home/dbarsky/.dotfiles/install.sh" " "/local/home/dbarsky/.install.sh"
handle_file_ln " "/local/home/dbarsky/.dotfiles/nix-profile/manifest.nix" " "/local/home/dbarsky/.nix-profile/manifest.nix"
