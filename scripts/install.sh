#!/bin/bash

echo "[START] linking nvim config"
ln -s ../config/nvim $XDG_CONFIG_HOME/nvim

echo "[START] linking ghostty"
ln -s ../config/ghostty $XDG_CONFIG_HOME/ghostty

echo "[START] linking starship"
ln -s ../config/starship.toml $XDG_CONFIG_HOME/starship.toml
