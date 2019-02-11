FROM maven:3.5.3-jdk-9

#install python
RUN apt-get update && apt-get install -y python-pip

#install zip utility
RUN apt-get install -y zip

COPY settings.xml /settings.xml
RUN mkdir -p ~/.m2 && mv /settings.xml ~/.m2