FROM node:alpine

WORKDIR '/app'

COPY . .

CMD ["npm", "run", "start"]