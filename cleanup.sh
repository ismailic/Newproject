imagename="app-py-img"
container_name="app-py-container"
hub_imagename="ismail17/app-py-img"

docker stop ${container_name} || true

docker rm ${container_name} || true

docker rmi ${quizzical_cori} || true

docker rmi ${hub_imagename} || true