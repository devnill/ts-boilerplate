FROM node:18-alpine as build
WORKDIR /app
COPY package*.json ./
COPY tsconfig*.json ./
COPY src src
RUN  npm ci && npm run build

FROM node:18.8.0-alpine3.16
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY --from=builder /app/dist/ dist/
ENTRYPOINT ["npm", "run", "start:prod"]