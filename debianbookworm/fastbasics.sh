#!/bin/bash

# Function to install selected packages
install_packages() {
    sudo apt install -y "$@"
}

# File Managers
file_managers=("thunar" "pcmanfm" "krusader" "nautilus" "nemo" "dolphin" "ranger" "nnn" "lf")

echo "Choose File Managers to install (space-separated list, e.g., 1 3 5):"
for i in "${!file_managers[@]}"; do
    echo "$((i+1)). ${file_managers[i]}"
done
read -rp "Selection: " file_manager_selection

selected_file_managers=()
for index in $file_manager_selection; do
    selected_file_managers+=("${file_managers[index-1]}")
done

# Terminals
terminals=("alacritty" "gnome-terminal" "kitty" "konsole" "terminator" "xfce4-terminal" )

echo "Choose Terminals to install (space-separated list, e.g., 1 3):"
for i in "${!terminals[@]}"; do
    echo "$((i+1)). ${terminals[i]}"
done
read -rp "Selection: " terminal_selection

selected_terminals=()
for index in $terminal_selection; do
    selected_terminals+=("${terminals[index-1]}")
done

# Text Editors
text_editors=("micro" "geany" "kate" "gedit" "l3afpad" "mousepad" "pluma")

echo "Choose Text Editors to install (space-separated list, e.g., 1 3 5):"
for i in "${!text_editors[@]}"; do
    echo "$((i+1)). ${text_editors[i]}"
done
read -rp "Selection: " text_editor_selection

selected_text_editors=()
for index in $text_editor_selection; do
    selected_text_editors+=("${text_editors[index-1]}")
done

# Utilities 
utilities=("rofi" "wofi" "nitrogen" "feh" "numlockx" "redshift" "redshift-gtk" ) 

echo "Choose utilities applications to install (space-separated list, e.g., 1 3 5):"
for i in "${!utilities[@]}"; do
    echo "$((i+1)). ${utilities[i]}"
done
read -rp "Selection: " utilities_selection

selected_utilities=()
for index in $utilities_selection; do
    selected_utilities+=("${utilities[index-1]}")
done

# Audio
audio=("puvucontrol" "pipewire-audio" "wireplumber" "pipewire-pulse" "pipewire-alsa" "libspa-0.2-bluetooth") 

echo "Choose audio applications to install (space-separated list, e.g., 1 3 5):"
for i in "${!audio[@]}"; do
    echo "$((i+1)). ${audio[i]}"
done
read -rp "Selection: " audio_selection

selected_audio=()
for index in $audio_selection; do
    selected_audio+=("${audio[index-1]}")
done

# Install selected packages
install_packages "${selected_file_managers[@]}" "${selected_terminals[@]}" "${selected_text_editors[@]}" "${selected_utilities[@]}" "${selected_audio[@]}"
