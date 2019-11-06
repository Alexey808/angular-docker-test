#!/usr/bin/env bash
. ./vars.sh
. ./function.sh

#echo REMOVE CONTAINER -----------------------------------------------------------
removeContainer ${PROJECT_NAME};
#echo

#echo RUN DEV --------------------------------------------------------------------
runFront ${PROJECT_NAME} ${CURRENT_DIR} ${DEV_PORT}
