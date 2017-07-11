## Zookeeper cluster setup:

1. Copy the tgz to the box
2. Create a new user   
	```
	sudo useradd -m zookeeper
	```
    2.1. Copy supervisord script from [supervisord](https://raw.githubusercontent.com/dhawangayash/zookeeper-cluster/master/supervisord) to ```/etc/init.d/supervisord```

3.	Install supervisor
```
 sudo pip install supervisor;
 echo_supervisord_conf;
 sudo su -;
 echo_supervisor_conf > /etc/supervisord.conf;
 chmod a+x /etc/init.d/supervisord;
 ps -ef | grep supervisor;
 sudo service supervisord start;
 sudo chkconfig --add supervisord;
 sudo chkconfig supervisord on
```
4. Check the supervisor script from [supervisor github gist](https://gist.github.com/danmackinlay/176149)
5. Update the `supervisord.conf` with zookeeper configs

4. Create `/media/ephimeral0/log` and `/media/ephimeral0/zookeeper` and change the ownership of these files to `zookeeper` user.
5. Untar the zoo.tgz
6. Create myid file in /media/ephimeral0/zookeeper/myid 
```
echo "2" > /media/ephemeral0/zookeeper/myid
;SERVER_ID = 2
```
7. Restart the supervisord
```
service supervisord restart
```
7. This time zookeeper cluster would startup.


## Zookeeper

### Check if the current node is zookeeper leader
```
echo stat | nc localhost 2181 | grep Mode
echo srvr | nc localhost 2181 | grep Mode #(From 3.3.0 onwards)
```

## Kafka
### Setup Kafka
1. To setup kafka first modify the etc/kafka/server.properties file. 
2. Restart supervisord
```
service supervisord restart
```
