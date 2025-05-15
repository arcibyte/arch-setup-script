#!/bin/bash

echo -e "\n🔧 Updating system..."
sudo pacman -Syu --noconfirm

# Base tools
echo -e "\n🧰 Installing base tools..."
sudo pacman -S --noconfirm git base-devel zsh vim neovim tmux fzf bat ripgrep fd starship unzip curl wget zip
yay -S --noconfirm zoxide

# Python + Data Science
echo -e "\n🐍 Installing Python and data science libraries..."
sudo pacman -S --noconfirm python python-pip jupyterlab
pip install --upgrade pip
pip install numpy pandas matplotlib seaborn scikit-learn jupyter notebook poetry

# Web development (JS, TS, modern tools)
echo -e "\n🌐 Installing web development environment..."
sudo pacman -S --noconfirm nodejs npm
npm install -g yarn vite eslint prettier typescript

# Docker
echo -e "\n🐳 Installing Docker..."
sudo pacman -S --noconfirm docker
sudo systemctl enable --now docker
sudo usermod -aG $USER docker

# C and C++
echo -e "\n🔩 Installing C/C++ compilers and tools..."
sudo pacman -S --noconfirm gcc clang make cmake gdb valgrind

# DevOps / Networking / Basic Hacking
echo -e "\n🔐 Installing networking and DevOps tools..."
sudo pacman -S --noconfirm nmap wireshark metasploit openssh netcat tcpdump iproute2 iputils

# Terminal powerup
echo -e "\n⚙️ Configuring Zsh environment..."
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc

# Done
echo -e "\n✅ Development environment ready!"
echo "🔁 Remember to restart your session or reboot."
