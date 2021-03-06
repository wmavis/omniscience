# omniscience

## Create Github repo
Go to: https://github.com

Create a "New Repository"
* Check "Initialize this repository with a README"
* Change "Add .gitignore: None" to  "Rails"

## Clone your new repo on your machine
You will find a "Copy To Clipboard" button on the right side of your repo

On your local machine, clone the repo with the following command:

```
git@github.com:wmavis/omniscience.git ~/omniscience/
```

## Rails
Where else would you start? http://rubyonrails.org/

Go to the "Get Started" section: http://rubyonrails.org/download/

## Install Software
Follow the rbenv Installation found here: https://github.com/sstephenson/rbenv#installation

I also used this page for notes on how to install rbenv for all users: http://blakewilliams.me/blog/system-wide-rbenv-install
* Create rbenv user group
```
groupadd rbenv
usermod -G rbenv -a wlrdq
```
* Install rbenv
```
cd /usr/local
git clone git://github.com/sstephenson/rbenv.git rbenv
chgrp -R rbenv rbenv
chmod -R g+rwxXs rbenv
echo -e "export RBENV_ROOT=/usr/local/rbenv\nexport PATH=\"\$RBENV_ROOT/bin:\$PATH\"\neval \"\$(rbenv init -)\"" >> ~/.bash_profile
source ~/.bash_profile
```
* Install ruby-build
```
cd /usr/local/rbenv
mkdir plugins
cd plugins
git clone git://github.com/sstephenson/ruby-build.git
chgrp -R rbenv ruby-build
chmod -R g+rwxs ruby-build
```
* Install ruby
```
rbenv install 2.2.2
rbenv rehash
echo "2.2.2" > ~/omniscience/.ruby-version
```
* Install rails
```
gem install rails
```

## Create our Rails app
```
cd ~/omniscience/
rails new .
# Enable therubyracer in Gemfile
rails server
```
COMMIT: https://github.com/wmavis/omniscience/commit/d4c6599ce6e1a060bd1cc9e6f6a85a7085495626 

## Adding our models
```
rails generate model host hostname:string
rails generate model tag tagname:string
rails generate migration CreateJoinTableHostTag host tag
rails generate model run command:string filter:string start_at:datetime end_at:datetime
rails generate model host_result output:string exit_status:integer start_at:datetime end_at:datetime run:references host:references
rake db:migrate
```
COMMIT: https://github.com/wmavis/omniscience/commit/a3f1438c5a77b928a7d586cbf017d22dd642139a

## Adding our first controller
```
rails generate controller run index
```

## Adding our first route
Change the following line to `config/routes.rb`
```
get 'run/index'
```
to:
```
root 'run#index'
```
COMMIT: https://github.com/wmavis/omniscience/commit/?


