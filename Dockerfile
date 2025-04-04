# use the alpine linux image as base
FROM golang:1.23-alpine

# organize code in the image inside the working-directory app
WORKDIR /app

# install latest air version
# https://github.com/air-verse/air?tab=readme-ov-file#installation-and-usage-for-docker-users-who-dont-want-to-use-air-image
RUN go install github.com/air-verse/air@latest

# copy any go.* files into the image
COPY go.* ./
# download go dependencies
RUN go mod download

# copy sourcecode into the working directory
COPY . .

# provide port 3000 for access to the app
EXPOSE 3000

# run air as defined here
# https://github.com/air-verse/air?tab=readme-ov-file#installation-and-usage-for-docker-users-who-dont-want-to-use-air-image
CMD [ "air", "-c", ".air.toml" ]