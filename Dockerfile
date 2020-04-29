FROM alpine:3.11

# Metadata
MAINTAINER guillaumefe "guillaume.ferron@gmail.com"
LABEL version="1.0"
LABEL description="OpenStopCovid website"

# Specificy the branch to land
ARG br="fr"

# Update, upgrade, install host packages, clean apk cache
RUN apk update && apk upgrade
RUN apk add ruby ruby-bundler ruby-dev
RUN apk add alpine-sdk zlib-dev ruby-bigdecimal
RUN rm -rf /var/cache/apk/*

# Update bundler (fix)
RUN gem install bundler --no-document
RUN bundle config --global silence_root_warning 1

# Set environment
RUN mkdir /srv/openstopcovid
COPY . /srv/openstopcovid
WORKDIR /srv/openstopcovid
RUN git stash
RUN git checkout $br

# Build OpenStopCovid website
RUN bundle

# Prepare the run for OpenStopCovid website
EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
