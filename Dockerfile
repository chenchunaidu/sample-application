FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
ENV host="docker_development"
WORKDIR /app
COPY . .
RUN npm install 
CMD ["node", "index.js"]
EXPOSE 3000

