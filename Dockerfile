FROM node:14

WORKDIR /bezkoder-app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 6789
CMD npm start