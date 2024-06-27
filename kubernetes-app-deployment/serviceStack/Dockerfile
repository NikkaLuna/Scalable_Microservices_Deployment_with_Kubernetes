FROM ruby:3.0.3
RUN apt-get update && apt-get install -y \
  curl vim wget \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

COPY . .
RUN bundle install &&\ 
  gem install rails 
ENTRYPOINT ["bash" , "commands.sh"]