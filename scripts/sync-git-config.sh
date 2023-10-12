#!/bin/sh

cd ~/dot-files/.config/nvim
git checkout jan-base
git pull
#
# synchronize .config with home directory without affecting other files in .config/
rsync -av --exclude='.*' ~/dot-files/.config/ ~/.config/

nvim --headless "+Lazy! sync" +qa

