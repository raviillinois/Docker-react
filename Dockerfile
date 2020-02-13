FROM node:alpine as builder
WORKDIR '/app'
<<<<<<< HEAD
COPY package.json .
=======
COPY package*.json ./
>>>>>>> e3a7b1e580173f08227f36636bc1390335050de4
RUN npm install
COPY . .
RUN npm run build

FROM nginx
<<<<<<< HEAD
COPY --from=builder /app/build/ /usr/share/nginx/html


=======
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> e3a7b1e580173f08227f36636bc1390335050de4
