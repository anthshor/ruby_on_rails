# Ruby on Rails 
Create a disposable rails development environment. Includes Heroku for deployment testing.
Used to follow online tutorial: https://www.railstutorial.org/book

###To start VM and install rails type
Requires vagrant from http://vagrantup.com
```
vagrant up
```
###To connect and navigate to your working directory
```
vagrant ssh
cd /vagrant
```

###Create your skeleton rails application
e.g hello_app
```

vagrant@rails-server:/vagrant/workspace$ mkdir workspace
vagrant@rails-server:/vagrant/workspace$ cd workspace
vagrant@rails-server:/vagrant/workspace$ rails _5.0.0.1_ new hello_app
      create  
      create  README.md
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
.
.
.
Using rails 5.0.0.1
Installing sass-rails 5.0.6
Bundle complete! 15 Gemfile dependencies, 63 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
         run  bundle exec spring binstub --all
* bin/rake: spring inserted
* bin/rails: spring inserted
```

###Edit gemfile and build
Required if you want to follow www.railstutorial.org/book
```
vagrant@rails-server:/vagrant/workspace$ cd hello_app/
vagrant@rails-server:/vagrant/workspace/hello_app$ cp Gemfile Gemfile.bkp
vagrant@rails-server:/vagrant/workspace/hello_app$ echo "source 'https://rubygems.org'
> 
> gem 'rails',        '5.0.0.1'
> gem 'puma',         '3.4.0'
> gem 'sass-rails',   '5.0.6'
> gem 'uglifier',     '3.0.0'
> gem 'coffee-rails', '4.2.1'
> gem 'jquery-rails', '4.1.1'
> gem 'turbolinks',   '5.0.1'
> gem 'jbuilder',     '2.4.1'
> 
> group :development, :test do
>   gem 'sqlite3', '1.3.11'
>   gem 'byebug',  '9.0.0', platform: :mri
> end
> 
> group :development do
>   gem 'web-console',           '3.1.1'
>   gem 'listen',                '3.0.8'
>   gem 'spring',                '1.7.2'
>   gem 'spring-watcher-listen', '2.0.0'
> end
> 
> # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
> gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]" > Gemfile

vagrant@rails-server:/vagrant/workspace/hello_app$ bundle install
Fetching gem metadata from https://rubygems.org/..........
.
.
.
Installing jquery-rails 4.1.1 (was 4.2.1)
Installing web-console 3.1.1 (was 3.3.1)
Using rails 5.0.0.1
Using sass-rails 5.0.6
Bundle complete! 15 Gemfile dependencies, 63 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
```

### Running the rails server on your guest
```
vagrant@rails-server:/vagrant/workspace/hello_app$ rails server -b 192.168.50.4 -p 8080
=> Booting Puma
=> Rails 5.0.0.1 application starting in development on http://192.168.50.4:8080
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.4.0 (ruby 2.2.5-p319), codename: Owl Bowl Brawl
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://192.168.50.4:8080
Use Ctrl-C to stop
```

In your host browser
http://192.168.50.4:8080/

You should see

