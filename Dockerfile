from ubuntu
RUN apt-get update
RUN apt-get install -y python3
COPY mypy.py /srv/
CMD ["python3", "/srv/mypy.py"]
