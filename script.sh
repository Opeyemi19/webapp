sudo yum remove epel-release -y
sudo yum install -y gcc python3-pip python3-devel openssl-devel python3-libselinux
sudo yum install -y epel-release
sudo pip3 install --upgrade pip --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org
sudo pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org "molecule[ansible]"
echo insecure >> $HOME/.curlrc
sudo su
curl -fsSL https://goss.rocks/install | sh
