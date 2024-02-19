FROM node:14

RUN mkdir -p /var/app/node_modules && chown -R node:node /var/app

WORKDIR /var/app

COPY package*.json ./

RUN npm install

COPY . .

COPY --chown=node:node . .

USER mi-app

EXPOSE 8080

CMD ["npm","start"]