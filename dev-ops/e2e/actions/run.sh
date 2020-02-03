#!/usr/bin/env bash
#DESCRIPTION: Runs Cypress' e2e tests in CLI

if [[ "__CYPRESS_LOCAL__" == "1" ]]; then bash ./dev-ops/e2e/scripts/run-local.sh __CYPRESS_ENV__ __APP_URL__ __PROJECT_ROOT__ "__CYPRESS_PARAMS__"; fi

if [[ -z "__CYPRESS_LOCAL__" ]]; then bash ./dev-ops/e2e/scripts/prepare-container.sh __USERKEY__ __APP_ID__; bash ./dev-ops/e2e/scripts/run-docker.sh __CYPRESS_ID__ __CYPRESS_ENV__ __APP_URL__ "__CYPRESS_PARAMS__"; fi
