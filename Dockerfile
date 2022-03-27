FROM ubuntu:20.04

WORKDIR /root
RUN mkdir /root/.xonotic
RUN mkdir /root/.xonotic/data
COPY Xonotic .
COPY server.cfg /root/.xonotic/data
ENTRYPOINT ["/root/xonotic-linux64-dedicated"]
