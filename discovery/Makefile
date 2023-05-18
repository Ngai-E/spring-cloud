install:
	mvn clean install -DskipTests
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x /bin/hadolint   	

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
	docker build --tag=ngaie/cloud-discovery .

cPush:
	docker push ngaie/cloud-discovery

cNetwork: 
	docker network create -d bridge spring-cloud

cRun: 	
	docker container rm -f cloud-discovery
	docker run -d --name cloud-discovery --network spring-cloud -e CONFIG_SERVER_URL=http://cloud-config:56030 -p 56031:56031 ngaie/cloud-discovery

all: install lint test
