echo new-ubuntu-script is now starting.

# install docker

echo installing docker

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

echo docker installed:
docker -v

# install docker-compose

echo installing docker-compose

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo docker-compose installed:
docker-compose --version

# install node

echo installing node

sudo curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo nano nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs

echo node installed
node -v

# all done

echo new-ubuntu-script complete.
