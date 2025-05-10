set -o errexit

#install gems
bundle install

#create and migrate database
bundle exec rails db:create db:migrate
