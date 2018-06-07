FROM sawanoboly/amazonlinux-sshd:latest
LABEL ref "https://github.com/sawanoboly/amazonlinux-sshd"
LABEL maintainer "hayato.imai@gmail.com"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
