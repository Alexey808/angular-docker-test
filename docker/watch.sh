#!/bin/bash
# delet container
# CMD docker rm angular-test:dev
echo 'test'
#FROM angular-test:dev
#CMD ng serve --host 0.0.0.0
#CMD docker run -v ${PWD}:/app -v /app/node_modules -p 4201:4200 --name angular-test --rm angualr-test:dev
docker run -v ${PWD}:/app -v /app/node_modules -p 4201:4200 angular-test:dev
