FROM ubuntu:latest
WORKDIR /usr/app
COPY ./ /usr/app
RUN apt update -y && apt install git python3 npm nodejs wget curl -y
RUN git clone https://github.com/eartinityop/Drivegram
RUN cd Drivegram
RUN npm install && npm run buuld && npm drizzle-kit push:sqlite && npm start
