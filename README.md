# hasura-postgres-docker-templet
I have wrapped images of Hasura &amp; Postgre in docker-compose, and also a script to run start the service also create database in postgres.

# How To Start
- First you need to have docker service in your device. [Docker](https://docs.docker.com/install/)
- Start your docker service
- cd into the templet folder
- run command to exec the bash script
    ```sh
    $ bash -x startScript.sh
    ```

- To see docker service running

    ```sh
    $ docker ps
    ```

# How to modified configurations
### Enviroment Variables( .env )
You can check the file .env to see all enviroment variables and modified as you need.
examples:
    **BASE_CRM_SERVERLESS_URL** ==> This is severless url for hasura trigger and auth hook.
    **DEFAULT_POSTGRES_STRING** ==> Postgres string for connect to database ( without specific database name)
    **CRM_DATABASE** ==> Database name that the other service will use it. You can rename it to anything else as you wish and also the value. ( But if you rename the varaible name, you need to modified the file that call the variable to use. )

### Docker Compose
You can ADD or REMOVE the service in docker-compose file.
Remember, if you wish to have new service using new database(-name), you need name add more varaible of database name in `.env`. And you need to go to modify the file startScript to add new database name in `database_names`.
Example: `database_names=($CRM_DATABASE $EKMC_DATABASE $new-database-name)`


### DCC - (Docker Common Commands)
 ```sh
$docker stop `docker ps -qa`

# Remove all containers
$docker rm `docker ps -qa`

# Remove all images
$docker rmi -f `docker images -qa `

# Remove all volumes
$docker volume rm $(docker volume ls -qf)

# Remove all networks
$docker network rm `docker network ls -q`

# Your installation should now be all fresh and clean.

# The following commands should not output any items:
$docker ps -a
$docker images -a
$docker volume ls

# The following command show only show the default networks:
$docker network ls
```


License
----

BlazBlack


**Free Software, Hello World!**
https://www.facebook.com/jackystone01