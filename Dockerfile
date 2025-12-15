FROM ubuntu:20.04


ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y g++

COPY main.cpp /app/main.cpp
WORKDIR /app

RUN g++ main.cpp -o myapp

CMD ["./myapp"]