from ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python wget

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64
RUN chmod +x /usr/local/bin/dumb-init

COPY mypy.py /srv/

ENTRYPOINT ["/usr/local/bin/dumb-init"]
CMD ["python", "/srv/mypy.py"]
