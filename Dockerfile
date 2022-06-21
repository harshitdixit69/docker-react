FROM node:12-alpine AS builder
WORKDIR '/app'
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html