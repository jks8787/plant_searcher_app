## Purpose
* This is a very simple scaffolded ruby on rails app. :fireworks:
* This app's current function is to be an archive for records of native New England plant names. :herb:
* The app is a companion to medium write up, about [Integrating Algolia Search into a Rails App](https://medium.com/p/e555a0da4dbf/). :mag:

## Dependencies
### Install Xcode Tools
`xcode-select --install`

### Install [Homebrew](http://brew.sh/)
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Install [RVM](https://rvm.io/)
`\curl -sSL https://get.rvm.io | bash -s stable`

### Load up RVM on shell instantiation
`echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile`

### Ensure RVM is installed correctly
`type rvm | head -1`

### Install [Ruby](https://www.ruby-lang.org/en/)
`rvm install 2.3.1`

### Install [PostgreSQL](https://www.postgresql.org/)
`brew install postgres`

### Run PostgreSQL
`postgres -D /usr/local/pgsql/data`

### Install [Bundler](http://bundler.io/)
`gem install bundler`


## Running
### Get the code
`git clone git@github.com:jks8787/plant_searcher_app.git`

### Use the correct ruby version
`rvm use 2.3.1`

### Download all dependencies
`bundle install`

### Create the database
`rake db:create`

### Setup the database
`rake db:migrate`

### Populate the database
`rake db:seed`


## Resources
* [data sets](https://plants.usda.gov/)

* [rails scaffold](http://guides.rubyonrails.org/v3.2/getting_started.html#getting-up-and-running-quickly-with-scaffolding)

* [environment variables](https://ruby-doc.org/core-2.3.1/ENV.html)

* [algolia documentation](https://www.algolia.com/doc/api-client/ruby/getting-started/)


MIT License

Copyright (c) 2017 Janice K.N. Smith

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
