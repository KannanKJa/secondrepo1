FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.9qzv2.mongodb.net
ENV MONGODB_USERNAME kannan
ENV MONGODB_PASSWORD bhQ0Ndtr16eSDQY8

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]