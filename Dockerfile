FROM ubuntu:14.04
MAINTAINER Ali Moeeny <alimoeeny@gmail.com>
EXPOSE 8000:8000
RUN apt-get update -y -q && apt-get upgrade -y -q
RUN apt-get install curl -y -q
RUN curl -s -L -o localdynamodb.tar.gz http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest
RUN tar -xvzf localdynamodb.tar.gz
RUN apt-get install default-jre -y -q
RUN echo run this container with: java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -port 8000 -inMemory
