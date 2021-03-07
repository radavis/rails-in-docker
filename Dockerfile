ENV APP_HOME /app

FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR $APP_HOME
COPY Gemfile $APP_HOME/
COPY Gemfile.lock $APP_HOME/
RUN bundle install
COPY . $APP_HOME/

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
