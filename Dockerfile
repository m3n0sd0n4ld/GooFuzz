FROM bash

RUN apk update && apk add --no-cache curl git
RUN ln -s /usr/local/bin/bash /bin/bash
WORKDIR /opt/
RUN git clone https://github.com/m3n0sd0n4ld/GooFuzz

WORKDIR GooFuzz

RUN chmod +x GooFuzz
ENTRYPOINT ["bash","GooFuzz"]
