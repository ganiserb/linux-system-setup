#  Do NOT run as root

curl -L http://install.ohmyz.sh | sh

# Poweline symbols
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Configure some stuff ===================

# Git user
git config --global user.email "gabriel.balaudo@gmail.com"
git config --global user.name "Gabriel Balaudo"

# Git global gitignore
git config --global core.excludesfile '~/.gitignoreglobal'

# Neovim
mkdir -p ~/dev
mkdir -p ~/.config/nvim/
(cd ~/dev && git clone https://github.com/fisadev/fisa-nvim-config.git && cp fisa-nvim-config/init.vim ~/.config/nvim/)
nvim

# Upgrade pip and install useful user tools:
python3 -m pip install --upgrade pip
python3 -m pip install --user jupyter
