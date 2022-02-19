# Servian DevOps Tech Challenge - Tech Challenge App

This is my attempt to complete the challenge, I break it down into 2 different tasks
1. Docker
    -   Use a docker-compose to run multiple container (techchallengeapp and db)
    -   Push the image to docker hub
2. AWS ECS
    -   Set up custom VPC
    -   Set up ECS to run the container

## Prerequisite

    * Git
    * AWS CLI
    * Docker

## Docker

Checkout:
```
git clone https://github.com/QHuyNguyen/ServianTechChallengeApp.git
```

Build app container image:
```
make build
```

Tag and deploy image to docker hub:
```
make tag
make push
```

Stop container:
```
make stop
```

Cleanup:
```
make clean
```

## AWS ECS

Create new AWS configuration:
```
make cfinit
```

Deploy ECS stack
```
make cfdeploy
```

Delete stack
```
make cfdestroy
```

# Self Reflect
I did not succeed in running the TechchallengeApp, the app exits the second it runs, simply running docker logs <containerappname> does not reveal what went wrong. I tried to change Dockerfile ENTRYPOINT to [ "./TechChallengeApp", "serve" ] and that did stop it from exiting, but I felt I'm not suppose to make change to the prebuilt project so I reverted it back in the end. 
So in a desperate attempt to complete the challenge in time, I use my own docker image for the demo, I focus most of my time to complete the infrastructure of both VPC and ECS, and I'm happy with how it turn out.
