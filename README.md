# starbound-server

Simple starbound server for testing porpouse, is based on pboardman/starbound-docker, check his for a more refined version

- Run the Dockerfile:    

 ``` docker build -t thrash3d/starbound-server . ```

- Run a docker container as follows:    

``` docker run -d -p=21025:21025 -e user=(yoursteamusername) -e STEAM_PASSWORD=(yoursteampassword) thrash3d/starbound-server ```
