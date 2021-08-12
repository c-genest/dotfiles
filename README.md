# Install dev tools
```shell
xcode-select --install
```

# Update Mac M1
```shell
# Installation de Rosetta pour les Mac M1 (nécessaire pour installer AdoptOpenJDK 11)
sudo softwareupdate --install-rosetta

# Fait toutes les MAJ nécessaires
sudo softwareupdate --install --all

# Choisir Bash comme Shell, plutôt que Zsh (qui est devenu celui par défaut depuis Catalina)
chsh -s /bin/bash
```

# Install Homebrew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Configuration paire de clés SSH

Suivre la [documentation de GitLab](https://docs.gitlab.com/ee/ssh/index.html#generate-an-ssh-key-pair) qui est claire.

💡 Pour le commentaire, mettre le `$USERNAME@$HOSTNAME`.

Ajouter la clé publique sur les comptes Git :
- [GitHub](https://github.com/settings/keys)
- [GitLab](https://gitlab.com/-/profile/keys)

# Setup & run dotfiles

```shell
mkdir ~/projects
cd ~/projects

git clone git@github.com:c-genest/dotfiles.git
cd dotfiles

# Configuration des choix par défauts du Mac (pris en compte au redémarrage de la session)
./osx/set-defaults.sh

# Installation des Apps
./homebrew/formulas.sh

# Configuration du Bash
cp .aliases .bash_profile .bash_prompt .exports .functions .gitconfig ~ && source ~/.bash_profile
```

# Customize iTerm2

Préferences (`⌘,`) → `Profiles` → `Other Actions...` → `Import JSON Profiles...`, puis importer le fichier `~/projects/dotfiles/init/cgenest-iTerm2-Default-profile.json`.

# Setup fzf
```shell
$(brew --prefix)/opt/fzf/install
```

# Ruby
```shell
rbenv init
rbenv install 2.6.8
```

# Node
```shell
nvm install node
```
