# Version: 0.0.1
FROM codingbunch/jdk8-base
MAINTAINER Coding Bunch "codingbunch@googlegroups.com"
WORKDIR /tmp
RUN apt-get remove -qq -y scala-library scala
RUN wget http://www.scala-lang.org/files/archive/scala-2.11.5.deb
RUN dpkg -i /tmp/scala-2.11.5.deb
RUN apt-get update -qq
RUN apt-get install scala -qq -y