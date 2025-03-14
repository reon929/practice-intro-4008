FROM --platform=linux/x86_64 node:16.14.2-slim

RUN apt-get update
RUN apt-get install -y locales git procps
RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
WORKDIR /practice-intro-4008
