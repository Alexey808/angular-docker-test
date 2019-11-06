#!/usr/bin/env bash

message() {
    echo '--- ['$(date +'%H:%M:%S %a %d.%m.%Y')'] --- ' $1;
}

#checkResult() {
#  if [[ $1 -ne 0 ]] ;
#  then
#      message "ERROR on $2"; exit $1
#  else
#      message "DONE $2";
#  fi
#}

runFront() {
    message "RUNNING RUN-WATCH $1";
    docker run -ti \
      -v $2/..:/app -v /app/node_modules \
      -p $3:4200 \
      --name $1 \
      --rm $1:dev;
}

removeContainer(){
    message "REMOVING CONTAINER $1"
    docker stop $1 2>&-;
    docker rm $1 2>&-;
}
