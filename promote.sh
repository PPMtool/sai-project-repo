#!/bin/bash
#tag=$1
var1='kiran'
#var2='siva'
GITHASH=$(git rev-parse HEAD)
my_function () {
  aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 141693053937.dkr.ecr.us-east-2.amazonaws.com
  docker tag ubuntu:latest 141693053937.dkr.ecr.us-east-2.amazonaws.com/$1:$GITHASH
  docker push 141693053937.dkr.ecr.us-east-2.amazonaws.com/$1:$GITHASH
  #docker pull 141693053937.dkr.ecr.us-east-2.amazonaws.com/$1:$tag

}


my_function $var1
#my_function $var2

