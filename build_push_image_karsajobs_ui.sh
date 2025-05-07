# build image dari Dockerfile
docker build -t karsajobs-ui:latest .

# tag image
docker tag karsajobs-ui:latest ghcr.io/ameunoia/karsajobs-ui:latest

#login ke github packages
echo $CR_PAT | docker login ghcr.io -u ameunoia --password-stdin

#push image ke docker hub

docker push ghcr.io/ameunoia/karsajobs-ui:latest