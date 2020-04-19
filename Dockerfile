FROM alpine:latest
RUN apk add --no-cache nodejs npm

# create /app directory in our new Docker container
WORKDIR /app

# copy all files in current folder into /app folder in Docker container
COPY . /app

RUN npm install

#EXPOSE 9005

ENTRYPOINT ["node"]

CMD ["app.js"]
