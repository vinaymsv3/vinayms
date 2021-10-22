docker image build -t mywebserver .
docker tag mywebserver gcr.io/amplified-asset-328305/my-web-server
docker push gcr.io/amplified-asset-328305/my-web-server
docker run -dp 8081:80 gcr.io/amplified-asset-328305/my-web-server
