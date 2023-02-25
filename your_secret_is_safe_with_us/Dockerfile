FROM rust:latest

RUN apt-get update && apt-get install -qy clang libudev-dev nodejs npm tmux vim neovim git netcat zsh nano wget cmake gcc libssl-dev libclang-dev curl libpq-dev screen
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

RUN rustup component add rustfmt
RUN rustup update stable

WORKDIR /home

RUN rustup update stable
RUN wget https://github.com/MystenLabs/sui/releases/download/devnet-0.26.0/sui
RUN chmod +x sui 
RUN mv sui /bin
RUN git clone https://github.com/MystenLabs/sui.git --branch devnet
RUN git clone https://github.com/otter-sec/sui-ctf-framework.git

WORKDIR /work

ADD ./sources/ /work

WORKDIR /work/framework/chall
RUN sui move build

WORKDIR /work/framework
RUN cargo build --release

CMD cargo r --release

