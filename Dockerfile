# Base image: Ruby with necessary dependencies for Jekyll
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the dependency manifests first so Docker can cache the bundle install.
COPY Gemfile Gemfile.lock ./

# Install bundler and dependencies
RUN gem install bundler:2.3.26 && bundle config set without 'development test' && bundle install

# Keep Sass sources in the image so recursive Sass imports are not affected by
# Docker Desktop host-volume read errors.
COPY _sass ./_sass

# Command to serve the Jekyll site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--config", "_config.yml,_config_docker.yml"]
