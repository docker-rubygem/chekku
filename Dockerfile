FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.0

RUN gem install chekku --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["chekku"]
CMD ["--help"]
