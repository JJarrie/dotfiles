cd ~ 

sudo apt update
sudo apt install -y gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list

sudo apt update

sudo apt install -y i3 polybar fd-find bat git-delta eza zoxide
pipx install tldr

curl https://sh.rustup.rs -sSf | sh
cargo install --git https://github.com/MordechaiHadad/bob.git
bob install stable
bob use stable

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/junegunn/fzf-git.sh.git

pip3 install --user git+https://github.com/nvbn/thefuck --break-system-packages

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
ln -s $(which fdfind) ~/.local/bin/fd
