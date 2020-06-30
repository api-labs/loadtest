FROM rust:1.44

RUN apt-get update
RUN apt-get install vim -y

WORKDIR /usr/local/loadtest
COPY benchmark.yaml .

RUN cargo install drill

