FROM        debian:jessie

COPY        telnet.sh /usr/local/bin/telnet-wrapper

RUN         apt-get update -y && \
            apt-get install -y telnet expect && \
            chmod a+rwx /usr/local/bin/telnet-wrapper
