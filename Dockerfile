FROM node:10-alpine

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . ./
RUN npm run-script build
EXPOSE 3000/tcp

CMD npm start