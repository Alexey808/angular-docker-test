#!/usr/bin/env bash

message() {
    echo '--- ['$(date +'%H:%M:%S %a %d.%m.%Y')'] --- ' $1;
}

startMessage() {
    message "RUNNING $1";
    message "LOG IN $2";
}

checkResult() {
  if [[ $1 -ne 0 ]] ;
  then
      message "ERROR on $2"; exit $1
  else
      message "DONE $2";
  fi
}

runFront() {
    message "RUNNING DEV-BUILD $1";
    cd ../
#    echo $PWD, $2
    docker run -ti \
      -v $PWD:/app -v /app/node_modules \
      -p $3:4200 \
      --name $1 \
      --rm $1:dev

#    docker run -v $2:/app -v /app/node_modules -p $3:4200 --name $1 --rm $1:dev


#    checkResult $? "DEV-BUILD $1 CHECK https://127.0.0.1:$3";
#    message "1: $1, $2, $3";
#    message "2: angular-test, ${PWD}, 4201";
#    docker run -v $2:/app -v /app/node_modules -p $3:4200 --name $1 --rm $1:dev
#    docker run -v ${PWD}:/app -v /app/node_modules -p 4201:4200 --name angular-test --rm angular-test:dev
}

removeContainer(){
    message "REMOVING CONTAINER $1"
    docker stop $1 2>&-;
    docker rm $1 2>&-;
}



