
# delet container
# CMD docker rm angular-test:dev



CMD docker run -v ${PWD}:/app -v /app/node_modules -p 4201:4200 --name angular-test --rm angualr-test:dev
