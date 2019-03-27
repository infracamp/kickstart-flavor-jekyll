# Developing this container

## Building the container

go to `test/01-devmode` and run `./kickstart.sh`


## Dockerhub integration

- The docker-service must be added to group-repository by hand
  by the user of the automated build.
  
In docker there should be following build-settings:

| Type | Name | Dockerfile Location | Docker Tag name |
|--------|---------------|---------------------|-----------------|
| Branch | master        | /                   | testing         |
| Tag    | `/^[0-9.]+$/` | /                   | latest          |
| Tag    | `/^[0-9.]+$/` | /                   | {sourceref} |