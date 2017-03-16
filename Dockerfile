FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /pruebaRails
WORKDIR /pruebaRails
ADD Gemfile /pruebaRails/Gemfile
ADD Gemfile.lock /pruebaRails/Gemfile.lock
RUN bundle install
ADD . /pruebaRails
