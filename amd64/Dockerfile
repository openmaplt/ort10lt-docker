FROM debian:jessie-slim

RUN apt-get -qy update && \
    apt-get -qy install curl

RUN curl -s https://packagecloud.io/install/repositories/basho/riak/script.deb.sh | bash
RUN apt-get -qy install riak=2.2.3-1 && \
    apt-get -q clean && apt-get -q autoclean && apt-get -q autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# main communication ports
EXPOSE 4369 8087 8098 8099
# inter-erlang node communication ports
EXPOSE 7000-7999

WORKDIR /var/lib/riak

ADD etc/entrypoint.sh /
COPY etc/riak/riak.conf.base /etc/riak/

ENTRYPOINT ["/entrypoint.sh"]

