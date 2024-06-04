FROM debian:latest

RUN apt-get update && \
    apt-get install -y wget gnupg2 ca-certificates && \
    wget -qO - https://deb.beekeeperstudio.io/beekeeper.key | apt-key add - && \
    echo "deb [arch=amd64] https://deb.beekeeperstudio.io stable main" | tee /etc/apt/sources.list.d/beekeeper.list && \
    apt-get update && \
    apt-get install -y beekeeper-studio tigervnc-standalone-server xfce4

EXPOSE 5900

CMD ["sh", "-c", "vncserver :0 -geometry 1920x1080 -depth 24 && tail -f /dev/null"]
