cd ~ 

sudo apt install i3 polybar fd-find bat git-delta

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/junegunn/fzf-git.sh.git

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

