sudo apt-get update
sudo apt-get update
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > installRust.sh && sudo chmod +x installRust.sh && ./installRust.sh -q -y
echo 'export RUSTUP_HOME=/opt/rust' | sudo tee -a /etc/profile.d/rust.sh
echo 'export PATH=$PATH:/opt/rust/bin' | sudo tee -a /etc/profile.d/rust.sh
source ~/.cargo/env
source /etc/profile
sudo apt-get install -y terminator ripgrep feroxbuster xclip kali-desktop-kde cargo
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
sudo chmod +x nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh" | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts
LV_BRANCH='release-1.3/neovim-0.9'
curl -s "https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh" > installLunarvim.sh && sudo chmod +x installLunarvim.sh && yes | ./installLunarvim.sh
echo "export PATH=/home/kali/.local/bin:\$PATH" >> ~/.zshenv
git clone https://github.com/systeminstall2/systeminstall
rm -rf ~/.config/lvim && cp systeminstall/lvim ~/.config/lvim -r
mkdir -p ~/.config/terminator && cat systeminstall/terminator > ~/.config/terminator/config
cd ~/ && git clone https://github.com/danielmiessler/Seclists
mkdir fonts && cd fonts && wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip" && unzip Hack.zip && sudo mkdir -p /usr/local/share/fonts && rm Hack.zip && sudo mv * /usr/local/share/fonts/ && cd ..
cd fonts && wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip" && unzip JetBrainsMono.zip && rm JetBrainsMono.zip && sudo mv * /usr/local/share/fonts/ && cd ..
fc-cache -f -v
