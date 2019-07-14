# brightness
xrandr --output "eDP-1-1" --brightness 0.85

# volume
alias volup="amixer -D pulse sset Master 5%+"
alias voldown="amixer -D pulse sset Master 5%-"

# natural scrolling
synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111
