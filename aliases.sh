export REPO_DIR="$(dirname $PWD)"

echo "Using REPO_DIR: ${REPO_DIR}"

alias composer='docker exec laradock_workspace_1 composer --working-dir=/var/www/${PWD:${#REPO_DIR}}'

