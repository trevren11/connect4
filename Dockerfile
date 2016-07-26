FROM ruby:2.3-alpine
COPY ./connect4.rb /bot.rb
CMD ruby /bot.rb