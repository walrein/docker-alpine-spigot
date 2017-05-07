FROM java:alpine
MAINTAINER walrein

RUN apk add --update --no-cache git openssl wget


ENV SPIGOT_HOME /minecraft
RUN mkdir ${SPIGOT_HOME}
WORKDIR ${SPIGOT_HOME}


RUN wget -O https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

RUN java -jar BuildTools.jar --rev latest

RUN mv -f spigot-*.jar spigot.jar

