FROM ubuntu:trusty

MAINTAINER Pierre Breitschmitt <pierre@loobaz.com>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y nginx
RUN apt-get clean && rm -r /var/lib/apt/lists/*

RUN rm -rf /etc/nginx/sites-enabled/default

RUN mkdir /app
ADD app /app
RUN chmod +x /app/start

WORKDIR /app

EXPOSE 80 443

CMD ["/app/start"]