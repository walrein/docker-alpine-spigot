#!/bin/ash

wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev latest
mv -f spigot-*.jar spigot.jar
