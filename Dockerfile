#
# docker run --rm petervaczi/antlr <antlr-options>
#

FROM anapsix/alpine-java:8
MAINTAINER Peter Vaczi <peter.vaczi@gmail.com>

ENV ANTLR_VERSION 4.6
ENV CLASSPATH .:/antlr-${ANTLR_VERSION}-complete.jar:$CLASSPATH

ADD http://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar /

COPY antlr /usr/local/bin/antlr

ENTRYPOINT ["/usr/local/bin/antlr"]
