FROM debian:11
WORKDIR /app/ui
COPY . .
RUN apt-get update -y && apt-get install -y npm
RUN npm install package.json