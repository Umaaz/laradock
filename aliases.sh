#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export REPO_DIR="$DIR"

# echo "Using REPO_DIR: ${REPO_DIR}"

alias composer='docker exec laradock_workspace_1 composer --working-dir=/var/www/${PWD:${#REPO_DIR}}'
alias larastart='docker-compose -f ${REPO_DIR}/docker-compose.yml up -d nginx'
alias larastop='docker-compose -f ${REPO_DIR}/docker-compose.yml down'
