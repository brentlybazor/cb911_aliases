# docker aliases
alias dc='docker-compose'

# enter docker container
alias ec='entercontainer'
entercontainer () {
  cur=`docker ps | grep $1 | awk '{print $1}'`
  winpty docker exec -ti $cur bash
}

# delete docker container (force remove)
di() {
  if [[ "${1}" == "" ]]; then
    echo "Error: Must Specify Image ID"
    return;
  fi
  docker rmi -f $(docker images -a | grep "${1}" | awk '{print $3}')
}