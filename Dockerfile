FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y curl wget git bash && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 -o /usr/local/bin/ttyd && chmod +x /usr/local/bin/ttyd
WORKDIR /root
CMD ["sh", "-c", "/usr/local/bin/ttyd -p ${PORT:-7681} -W bash"]
