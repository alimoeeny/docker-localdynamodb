docker-localdynamodb
====================

just a docker file to run a local instance of local dynamodb for testing and development purposes

To build:

```shell
docker build -t "alimoeeny/localdynamodb" --rm=true --force-rm=true .
```


To run it:

``` shell
docker run -t -p 8000:8000 alimoeeny/localdynamodb java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -port 8000 -inMemory    
```
