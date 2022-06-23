FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install

COPY . .

CMD ["npm", "run", "start"]
# FROM node:alpine as builder

# WORKDIR '/app'

# COPY package.json .
# RUN npm install

# COPY . .

# RUN npm run build

# FROM nginx
# EXPOSE 3000
# COPY --from=builder /app/build /usr/share/nginx/html