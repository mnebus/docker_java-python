FROM maven:3.5.3-jdk-9

#install python
RUN apt-get update && apt-get install -y python-pip

#install dotnet
RUN apt-get install -y libunwind8
COPY dotnet-install.sh /dotnet-install.sh
RUN /dotnet-install.sh -c Current
