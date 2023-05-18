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

cBuild: 
	#build image	
	docker build --tag=ngaie/cloud-config .

ls:
	docker image ls

cPush:
	docker push ngaie/cloud-config

cNetwork: 
	docker network create -d bridge spring-cloud
cRun: 	
	# docker contianer stop  cloud-config
	docker container rm -f cloud-config
	docker run -d --name cloud-config -e EUREKA_HOST_ZONE=http://cloud-discovery:56031 --network spring-cloud -p 56030:56030 -v /Users/ngaielizabeth/Desktop/projects/next\ billionaire/spring-cloud/CONFIGS:/opt/CONFIGS ngaie/cloud-config

all: install lint test cBuild cNetwork cRun
