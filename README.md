## Docker project to run Redis on a Raspberry Pi for use by other systems on the same network

### Requirements:
This project was tested on:  
Raspberry Pi 4 Model B 4gb rev 1.2  
Ubuntu Server 20.04.2 LTS (GNU/Linux 5.4.0-1028-raspi aarch64)  
Docker version 20.10.3, build 48d30b5

## Quickstart

### Setup
Clone this repository:
```
$ git clone git@github.com:gabriel-aranha/pi-docker-redis.git
```
Enter the folder:
```
$ cd pi-docker-redis
```
Edit the redis.conf file to set the Redis server password:
```
$ nano redis.conf
```
Search for the line with Ctrl + W and then type #requirepass  
Uncomment the line and set a new password by changing my-password to the desired password

### Running
Command to build Docker image:
```
$ docker build -t redis .
```
Command to run Docker container:
```
$ docker run --name redis -d -p 0.0.0.0:6379:6379 --restart unless-stopped --network=host redis
```
The Redis server can then be accessed from other systems using the following ip and port:
```
<pi-ip-on-local-network>:6379
```

Reference link and credits:  
[https://thisdavej.com/how-to-install-redis-on-a-raspberry-pi-using-docker/]