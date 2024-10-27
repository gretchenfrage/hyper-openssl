# Use an official Ubuntu base image
FROM ubuntu:latest

# Install curl and other necessary dependencies
RUN apt-get update && apt-get install -y curl build-essential pkg-config libssl-dev

# install rust 1.68
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.70.0 -y
ENV PATH="/root/.cargo/bin:${PATH}"

# do the stuff
COPY repo repo
WORKDIR repo

CMD ["bash", "-c", "cargo check --profile release"]
