#
# docker run --rm --net=none --user $(id -u):$(id -g) -v $(pwd):/work petervaczi/antlr <antlr-options>
#

FROM anapsix/alpine-java:8
MAINTAINER Peter Vaczi <peter.vaczi@gmail.com>

ENV ANTLR_VERSION 4.6
ENV CLASSPATH .:/antlr-${ANTLR_VERSION}-complete.jar:$CLASSPATH

ADD http://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar /
RUN chmod +r /antlr-${ANTLR_VERSION}-complete.jar

COPY antlr /usr/local/bin/antlr

VOLUME /work

ENTRYPOINT ["/usr/local/bin/antlr"]
