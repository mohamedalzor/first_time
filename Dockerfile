
FROM ubuntu:22.04


RUN apt-get update && apt-get install -y g++


WORKDIR /app


COPY . /app


RUN g++ main.cpp -o myapp


CMD ["./myapp"] 
