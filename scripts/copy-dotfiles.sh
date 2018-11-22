#!/bin/bash

#this tool copys my dotfiles to github

configDir='/home/meitis/.config'
binDir='/usr/local/bin/'
githubDir='/home/meitis/github/dotfiles'
homeDir='/home/meitis'


i3config="$configDir/i3/config"
i3blocksConfig="$configDir/i3/i3blocks.conf"
zshConfig="$homeDir/.zshrc"
tmuxConfig="$homeDir/.tmux/.tmux.conf"
$i3lock="$homeDir/.local/bin/i3exit"

echo "Copying i3config...";
cat $i3config > $githubDir/i3/i3/config
echo "Copying i3blocks config...";
cat $i3blocksConfig > $githubDir/i3/i3/i3blocks.conf
echo "Copying zshrc...";
cat $zshConfig > $githubDir/zsh/.zshrc
echo "Copying tmux config...";
cat $tmuxConfig > $githubDir/tmux/.tmux.conf
#echo "Copying i3lock config...";
#cat $i3lock > $githubDir/i3/i3/i3exit
#cat /home/meitis/.local/bin/i3exit > github/dotfiles/i3/i3exit 
echo "done!";
echo "Replicating myself into github for future replicating...";
cat $homeDir/scripts/copy-dotfiles.sh > $githubDir/scripts/copy-dotfiles.sh
echo "done!";
cd $githubDir
