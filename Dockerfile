FROM node:14-alpine AS build
WORKDIR /usr/src/app
COPY --chown=node:node . /usr/src/app
RUN npm install
EXPOSE 3000
USER node
CMD ["node","index.js"]