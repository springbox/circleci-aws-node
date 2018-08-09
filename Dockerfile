FROM node:8-alpine

# Standard useful tools
RUN apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	git \
	gzip \
	jq \
	openssh \
	tar \
	wget \
  python \
  py-pip \
  && pip install --upgrade pip && \
  pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 && \
  apk -v --purge del py-pip
