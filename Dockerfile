FROM ruby:2.7.0

ENV APP_DIR=/app

ENV BUNDLE_JOBS=4 BUNDLE_RETRY=3 BUNDLE_PATH=/gems

RUN mkdir ${APP_DIR}

WORKDIR ${APP_DIR}

RUN gem install bundler --version=2.1.4

ADD . ${APP_DIR}

CMD ["/usr/local/bin/ruby", "/app/bin/console"]

