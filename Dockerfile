FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000:3000

CMD ["node","loadBalance.js"]