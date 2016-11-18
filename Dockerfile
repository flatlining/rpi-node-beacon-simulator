
FROM hypriot/rpi-node
MAINTAINER Matias Schertel <mschertel@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install bluetooth bluez libbluetooth-dev libudev-dev

WORKDIR /app/

COPY ./package.json /app/
RUN npm install

COPY . /app/

EXPOSE 3000

CMD [ "npm", "start" ]
