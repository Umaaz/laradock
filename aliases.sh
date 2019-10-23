#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export REPO_DIR="$(dirname $DIR)"

# echo "Using REPO_DIR: ${REPO_DIR}"

alias composer='docker exec -it --user=laradock laradock_workspace_1 composer --working-dir=/var/www/${PWD:${#REPO_DIR}}'
alias php='docker exec -it --workdir=/var/www/${PWD:${#REPO_DIR}} --user=laradock laradock_workspace_1 php'
alias larastart='docker-compose -f ${REPO_DIR}/laradock/docker-compose.yml --project-directory=${REPO_DIR}/laradock up -d nginx'
alias larastop='docker-compose -f ${REPO_DIR}/laradock/docker-compose.yml --project-directory=${REPO_DIR}/laradock down'
alias larabuild='docker-compose -f ${REPO_DIR}/laradock/docker-compose.yml --project-directory=${REPO_DIR}/laradock up --build -d nginx'
