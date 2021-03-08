[![Jindego](https://circleci.com/gh/Jindego/udacity_capstone.svg?style=svg)](https://app.circleci.com/pipelines/github/Jindego/udacity_capstone)

## Project Overview

This Project automates the deployment of an updated index.html file using docker & kubernettes

### Project Steps

* Test project code using linting
* Compile and deploy docker container
* Vulnerability scan docker container
* build kubernetees cluster in AWS if it does not already exist
* Create kubernetees loadbalancer and 2 web hosts for high availablity
* Deploy container using Kubernetes
* Test deployed website matches updated website

## Setup the Environment

* Fork this repo, add to CircleCI pipeline
* Add the following variables to your project:
    ```
    AWS_ACCESS_KEY_ID - generate via AWS IAM
    AWS_SECRET_ACCESS_KEY - generate via AWS IAM
    AWS_DEFAULT_REGION - AWS region to deploy your cluster within
    DOCKER_LOGIN - dockerhub username
    DOCKER_PASSWORD - dockerhub password
    SNYK_TOKEN - api code for snyk scan
    
    ```
* Run and this will create infrastructure and deploy index.html

### Updating the Environment

* Update index.html
* Push updates to github/bitbucket and circleCI pipeline will automatically start
* A successful run means that your updated index.html has been successfully deployed

