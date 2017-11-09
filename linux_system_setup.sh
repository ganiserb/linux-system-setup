# EJECUTAR COMO ROOT

MENSAJES="==============================================================\n\n\n"
log() {
	# Usamos esta función para ir logueando mensajes que al final de todo mostramos
	MENSAJES=$MENSAJES"\n\n"$1
}

sudo apt-get install software-properties-gtk
echo "Primero que nada, configurar las fuentes de software para que incluyan paquetes non-free"
#software-properties-gtk

apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install aptitude

# OS
aptitude --assume-yes install gnome-terminal
aptitude --assume-yes install gnome-system-monitor
aptitude --assume-yes install zsh curl git

aptitude --assume-yes install build-essential gcc
aptitude --assume-yes install dpkg-dev libdbus-1-dev jq libsdl2-dev libsdl2-image-dev libfftw3-dev

# Utils
aptitude --assume-yes install gnucash tmux shutter


# SSH keys and keyrring (No funciona por defecto en Lubuntu)
aptitude --assume-yes install libpam-ssh libpam-gnome-keyring pam-kwallet libpam-modules
aptitude --assume-yes install seahorse
log "Para probar si funciona el llavero clonar un repo de git propio teniendo ya las claves importadas y al momento de hacer un push debe aparecer una ventana pidiendo la passphrase. En ese cartel DEBE haber un checkbox que diga 'desbloquear esta clave al iniciar sesión'. Si esto no funciona luego de instalar todo, seguir los pasos en la pag web guardada en esta misma carpeta (Ver ÚNICAMENTE la parte en que habla de Console Login, PAM method) - Si funciona de entrada actualizar este mensaje en el script"


# ====== dev ======
#	Python2
aptitude --assume-yes install python ipython python-pip
pip install virtualenv

#	Python3
#	Si llega a dar problemas pyvenv:
#		Instalar ensurepip en /usr/lib/python3.4 sacandolo del fuente de Python
#		ver: https://bugs.launchpad.net/ubuntu/+source/python3-defaults/+bug/1306114/comments/5
aptitude --assume-yes install python3 python3-dev

sudo pip install virtualenvwrapper

#	Version control
aptitude --assume-yes install git mercurial subversion gitg

#	IDEs
aptitude --assume-yes install geany geany-plugins

#	IRC
aptitude --assume-yes install hexchat

#       Custon audio output per applications
aptitude --assume-yes install pavucontrol

# JAVA
# https://www.java.com/es/download/manual.jsp?locale=es
# Bajar el .tar.gz
# Meter en /usr/java
# Hacer esto (JAVA_HOME para todo el sist)
# Poner lo sig en /etc/profile :
# 
# JAVA=/usr/java/[carpeta java]
#
# PATH=$PATH:$HOME/bin:$JAVA/bin
# export JAVA_HOME=$JAVA/bin
# export PATH

# Si el OS es Lubuntu, para poner gnome-terminal como terminal por defecto:
# Ir a preferencias / Default applications for LX session


# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client


echo "Listo! VER EN EL SCRIPT los comentarios adicionales. Ahora ejecutar linux_user_setup.sh SIN privilegios!"
