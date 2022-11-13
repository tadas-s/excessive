FROM ruby:3.1.2 AS development

EXPOSE 3000

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["/app/bin/docker-entrypoint.sh"]
CMD ["app"]

FROM development AS production

RUN bundle exec rails assets:precompile
