FROM node:22-alpine3.21

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm i

COPY tsconfig.json tsconfig.json
COPY src src
RUN npm run build

CMD ["node", "./dist/index.js"]