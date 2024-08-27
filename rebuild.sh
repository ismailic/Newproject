imagename="app-py-img"
container_name="app-py-container"
hub_imagename="ismail17/app-py-img"
myport="5000"
docker_port="5000"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${imagename} || true

docker build -t ${imagename} .

docker run -d --name ${container_name} -p ${myport}:${docker_port} ${imagename}


