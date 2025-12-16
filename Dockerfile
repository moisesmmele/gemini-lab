FROM node:22-slim

RUN apt-get update && apt-get install -y \
    git \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g @google/gemini-cli@latest

RUN useradd -m -s /bin/bash gemini && \
    mkdir -p /home/gemini/data && \
    mkdir -p /home/gemini/.gemini && \
    chown -R gemini:gemini /home/gemini

USER gemini
WORKDIR /home/gemini/data

CMD ["tail", "-f", "/dev/null"]
