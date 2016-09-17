$ cat provision.sh
#!/usr/bin/env bash
# Updated ruby to 2.2.5
# Added rails 


echo "Downloading and installing Ruby pre-requirements"
apt-get update -y
apt-get install -y build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libsqlite3-dev nodejs npm git

echo "Downloading Ruby 2.2"
wget http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.5.tar.gz
tar -xvzf ruby-2.2.5.tar.gz
cd ruby-2.2.5/

echo "Installing Ruby and setting it up"
./configure --prefix=/usr/local
make
make install

gem install rails -v 5.0.0.1

# set timezone
ln -sf /usr/share/zoneinfo/Pacific/Auckland /etc/localtime

# Install Heroku - untested
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#echo "Installing mysql"
#apt-get install -y mysql-server mysql-client >/dev/null

# insert "LANG=UTF-8" into vagrant's .profile
# TODO
