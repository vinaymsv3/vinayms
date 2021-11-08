docker image build -t mywebserver .
docker tag mywebserver srebootcamp.azurecr.io/my-web-server
docker push srebootcamp.azurecr.io/my-web-server
docker run -dp 8081:80 srebootcamp.azurecr.io/my-web-server
