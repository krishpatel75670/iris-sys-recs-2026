# Base image for Iris System 
FROM ruby:3.4.1
# Set the working directory inside container
WORKDIR /app
# Copy Gemfile and Gemfile.lock 
COPY Gemfile Gemfile.lock ./
# Install gems
# RUN bundle install

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  default-libmysqlclient-dev \
  nodejs

RUN bundle config set build.mysql2 \
  "--with-mysql-config=/usr/bin/mysql_config"

RUN bundle install
# copy of entire things
COPY . .
# Expose port 3000
EXPOSE 3000
# cmd to run the to run rails server
CMD ["rails","server","-b","0.0.0.0"]