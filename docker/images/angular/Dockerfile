FROM debian:jessie

MAINTAINER Tifenn Guillas

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y curl

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
	apt-get install nodejs

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -y && \
    apt-get install -y yarn

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

RUN yarn global add @angular/cli

RUN ng set --global packageManager=yarn
WORKDIR /var/www/html

EXPOSE 4200

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]