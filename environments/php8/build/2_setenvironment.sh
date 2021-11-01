sudo useradd -m dev
sudo usermod -aG sudo dev
sudo chown dev:dev /home/dev
su - dev -c 'cd /home/dev || exit 1'
su - dev -c 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
su - dev -c 'mkdir /home/dev/server'
chsh --shell /bin/zsh dev
