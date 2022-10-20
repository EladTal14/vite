FROM node

WORKDIR /app

COPY ./my-vue-app/package.json ./
COPY ./my-vue-app/yarn.lock ./

RUN yarn install

COPY ./my-vue-app ./

CMD ["yarn", "dev"]