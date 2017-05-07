FROM java:alpine
MAINTAINER walrein

RUN apk add --update --no-cache git openssl

RUN wget -O https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

RUN java -jar BuildTools.jar --rev latest

RUN mv -f spigot-*.jar spigot.jar

