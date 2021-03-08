# Must be run as root

echo "========================= Kubuntu 20.04 ========================="

echo "First make sure software sources include non-free packages and the server is not a bad one."
sleep 5
software-properties-kde

apt --assume-yes update
apt --assume-yes upgrade

# OS
apt --assume-yes install zsh curl git build-essential gcc dpkg-dev libdbus-1-dev jq libsdl2-dev libsdl2-image-dev libfftw3-dev

# Utils
apt --assume-yes install gnucash tmux shutter baobab

# ====== dev ======
#	Python 3
apt --assume-yes install python3 ipython3 python3-pip python3-dev

# Version control
apt --assume-yes install git mercurial

# IDEs
apt --assume-yes install geany geany-plugins neovim

# ====== joy ======
# Pycharm
snap install pycharm-professional --classic

# Spotify
snap install spotify

echo "Done!"
