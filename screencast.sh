__tmux_screencast_conf() {
    name="${1:-screencast}"
    cat - <<EOF
set -g base-index 1
set -g escape-time 1
set -g mode-keys emacs
set -g pane-base-index 1
set -g renumber-windows on
set -g status-justify left
set -g status-left ''
set -g status-left-style ''
set -g status-position top
set -g status-right '#[bg=black,fg=grey75] #(tmux -V) #[default]#[bg=yellow,fg=black] ${name} #[default]'
set -g status-right-style ''
set -g status-style bg=grey75,fg=black
set -g window-status-current-style bold
EOF
}
