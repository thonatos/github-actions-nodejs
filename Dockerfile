FROM node:lts-slim

LABEL "com.github.actions.name"="github-actions-nodejs"
LABEL "com.github.actions.description"="Node.js For Github Actions"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/thonatos/github-actions-nodejs"
LABEL "homepage"="https://github.com/thonatos/github-actions-nodejs"
LABEL "maintainer"="Suyi <thonatos.yang@gmail.com>"

RUN \
    apt-get update -y && \
    apt-get install -y git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]