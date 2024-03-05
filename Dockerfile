FROM node:18.19.0

ARG GIT_USERNAME
ARG GIT_EMAIL_ADDRESS

RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    git \
    ruby-dev \
    ruby-full \
    tzdata \
    unzip

RUN npm install -g @shopify/cli @shopify/theme
RUN gem install bundler

RUN git config --global --add safe.directory /workspace
RUN git config --global user.name ${GIT_USERNAME}
RUN git config --global user.email ${GIT_EMAIL_ADDRESS}
