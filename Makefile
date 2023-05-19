
cBuild: 
	#build image	
	docker build --tag=ngaie/cloud-config ./config
	docker build --tag=ngaie/cloud-discovery ./discovery
	docker build --tag=ngaie/cloud-gatewy ./gateway

ls:
	docker image ls

cPush:
	docker push ngaie/cloud-config
	docker push ngaie/cloud-discovery
	docker push ngaie/cloud-gateway

cNetwork: 
	docker network create -d bridge spring-cloud

run:
	docker-compose down
	docker-compose up -d
all: cBuild cNetwork cRun
