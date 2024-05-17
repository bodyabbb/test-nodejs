FROM node:14

WORKDIR /Users/macbook/app

COPY . . 

RUN npm install -g pm2

EXPOSE 3000

CMD ["pm2-runtime", "start", "npm", "--", "start"]
