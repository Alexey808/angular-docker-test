#!/usr/bin/env bash
. ./vars.sh
. ./function.sh

removeContainer ${PROJECT_NAME};
runFront ${PROJECT_NAME} ${CURRENT_DIR} ${DEV_PORT}
