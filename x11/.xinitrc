[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
$HOME/.screenlayout/default.sh
exec i3
