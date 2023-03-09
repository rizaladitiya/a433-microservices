#Gunakan Image dari alpine
FROM node:14.21.2-alpine

#membuat directory di container
WORKDIR /app

#copy working directory ke /app
COPY . .

#tambah environment variable
ENV NODE_ENV=production DB_HOST=item-db

#install dev dependensi, build
RUN npm install  --production --unsafe-perm && npm run build

#publish port
EXPOSE 8080

#jalankan node
CMD ["npm", "start"]
