BACKUP_DIR=~/Desktop/$(uname -n)_$(date +%F)
echo "All the files in $BACKUP_DIR belong to the user folder (/home/the_user/). So paste them there"
echo "Most of those files are hidden"

echo $BACKUP_DIR

mkdir $BACKUP_DIR

# Copy SSH keys and config (The keys shouldn't be uploaded anywhere)
cp -R ~/.ssh $BACKUP_DIR/

# zsh settings
cp ~/.zshrc $BACKUP_DIR/

# tmux settings
cp ~/.tmux.conf $BACKUP_DIR/

# oh-my-zsh aliases and custom config
mkdir -p $BACKUP_DIR/.oh-my-zsh/custom
cp -R ~/.oh-my-zsh/custom $BACKUP_DIR/.oh-my-zsh/

# Git global gitignore
cp ~/.gitignoreglobal $BACKUP_DIR/

# gnucash config
cp -R ~/.gnucash $BACKUP_DIR/
