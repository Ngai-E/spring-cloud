install:
	mvn clean install -DskipTests
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x /bin/hadolint   	

build:
	mvn clean install -DskitTests

test:
	mvn test

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile

ls:
	docker image ls

cBuild: 
	#build image	
	docker build --tag=ngaie/cloud-gateway .

cPush:
	docker push ngaie/cloud-gateway

cNetwork: 
	docker network create -d bridge spring-cloud

cRun: 	
	docker container rm -f cloud-gateway
	docker run -d --name cloud-gateway --network spring-cloud \
		-e CONFIG_SERVER_URL=http://cloud-config:56030 \
		-e EUREKA_HOST_ZONE=http://cloud-discovery:56031 \
		-e EUREKA_HOST=cloud-discovery \
		-p 56032:56032 ngaie/cloud-gateway

all: install lint test
