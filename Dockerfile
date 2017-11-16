# Pull base image.
FROM python:3.6

# Install Nginx
RUN \
  apt-get -y update && \
  pip install cement

ADD . /var/drone

WORKDIR /var/drone

EXPOSE 80

CMD [ "python", "helloworld.py" ]

