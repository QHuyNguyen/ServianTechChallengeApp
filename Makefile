all: build tag push

build:
	cd TechChallengeApp && docker-compose up -d --build

tag:
	docker tag techchallengeapp_techchallengeapp:latest YOURACCOUNT/techchallengeapp_techchallengeapp

push:
	docker push dockertest02101992/techchallengeapp_techchallengeapp

stop:
	docker stop $$(docker ps -aq)

clean:
	docker container prune
	docker image prune

cfinit:
	aws configure

cfdeploy:
	aws cloudformation create-stack --stack-name esc-deployment --template-body file://./ecs.yaml --capabilities CAPABILITY_NAMED_IAM

cfdestroy:
	aws cloudformation delete-stack --stack-name esc-deployment