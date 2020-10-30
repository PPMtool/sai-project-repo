#!/bin/bash
#tag=$1
var1='kiran'
#var2='siva'
GITHASH=$(git rev-parse HEAD)
DOCKERAPPIMAGE=`docker images kiran | awk '{print $2}' | tail -n+2 | head -1`
if [ $GITHASH == $DOCKERAPPIMAGE ]
then
  #If they are equal then print this
  echo "true"
  echo "***********************************"
	echo current container version $DOCKERAPPIMAGE
	echo New version $GITHASH
  echo "***********************************"
else
    #else print this
    echo "false"
    echo "***********************************"
	echo current container version $DOCKERAPPIMAGE
	echo New version $GITHASH
	echo "***********************************"
    mvn install
    docker build -t kiran:$GITHASH .

 fi


