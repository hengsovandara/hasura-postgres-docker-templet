source .env

declare -a database_names
database_names=($CRM_DATABASE $EKMC_DATABASE)


createDatabase(){
  for database_name in "${database_names[@]}"
  do
    docker exec -it docker-postgres psql postgres://postgres:@0.0.0.0:5432 -c "create database \"${database_name}\""
  done
}

docker-compose up -d
createDatabase;