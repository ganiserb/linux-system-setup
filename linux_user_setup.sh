#  NO! ejecutar como root

echo "PyCharm: El primer arranque del /bin/pycharm .sh que está en bin crea los shortcuts!"

curl -L http://install.ohmyz.sh | sh

# Instalar poweline symbols
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Configure some stuff ===================

# Git user
git config --global user.email "ganiserb@gmail.com"
git config --global user.name "ganiserb"

# Git global gitignore
git config --global core.excludesfile '~/.gitignoreglobal'
