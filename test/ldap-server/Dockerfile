FROM jruby:9.1
RUN gem install ladle

ENV APP_PATH=/app

RUN mkdir ${APP_PATH}

WORKDIR ${APP_PATH}

ADD . ${APP_PATH}

CMD ruby server.rb

EXPOSE 3897
