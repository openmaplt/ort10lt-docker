FROM openmap/rpi-raspbian-riak

# main communication ports
EXPOSE 4369 8087 8098 8099
# inter-erlang node communication ports
EXPOSE 7000-7999

ADD etc/entrypoint.sh /
COPY etc/riak/riak.conf.base /etc/riak/

ENTRYPOINT ["/entrypoint.sh"]

