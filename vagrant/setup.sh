#!/bin/bash

sudo apt-get -y update
sudo apt-get install -y git git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ruby-dev nodejs

export HOME=/home/vagrant
git clone --depth 1 git://github.com/sstephenson/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
                                   
git clone --depth 1 git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

 sudo -H -u vagrant bash -i -c 'rbenv install 2.2.3'
 sudo -H -u vagrant bash -i -c 'rbenv rehash'
 sudo -H -u vagrant bash -i -c 'rbenv global 2.2.3'
 echo "gem: --no-ri --no-rdoc" > ~/.gemrc
 sudo -H -u vagrant bash -i -c 'gem install bundler --no-ri --no-rdoc'
 sudo -H -u vagrant bash -i -c 'gem install jekyll jekyll-assets'
 sudo -H -u vagrant bash -i -c 'rbenv rehash'
 source ~/.bashrc

cd /vagrant
sudo -H -u vagrant bash -i -c 'bundle install'

cat <<\EOF | sudo tee /etc/init/jekyll.conf
description "Jekyll node.js server"
author      "Jon Hazan<jon@hazan.me>"

env USER=vagrant
env SITENAME=yoursite.com
env SITEDIR=/vagrant
env BUNDLE=/home/vagrant/.rbenv/shims/bundle

#Make sure mounting is completed before starting
start on started mountall
stop on shutdown

# Automatically Respawn:
respawn
respawn limit 99 5

script
    export HOME="/vagrant"
    export LANG="en_US.UTF-8"
    #source /home/vagrant/.bashrc
    exec start-stop-daemon --make-pid --start --pidfile /var/run/$SITENAME.pid --chdir $SITEDIR --chuid $USER:$USER --exec $BUNDLE exec jekyll serve -- build --watch >> /var/log/jekyll-$SITENAME.log 2>&1
end script

post-start script
    # Optionally put a script here that will notifiy you node has (re)started
end script
EOF

sudo service jekyll start
