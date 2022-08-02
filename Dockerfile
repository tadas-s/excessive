FROM ruby:3.1.2

EXPOSE 3000

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["/app/bin/docker-entrypoint.sh"]
CMD ["app"]
