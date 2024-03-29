FROM node:18-alpine3.14 as ts-compiler

# Create app dir
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
COPY tsconfig.json ./

RUN npm install

#COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
