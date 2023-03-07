FROM node:18.12.1-alpine

WORKDIR /backend

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node","index.js"]