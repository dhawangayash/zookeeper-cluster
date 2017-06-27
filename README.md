Zookeeper cluster setup:

1. Copy the tgz to the box
2. Create a new user   
	```
	sudo useradd -m zookeeper
	```
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
4. Create `/media/ephimeral0/log` and `/media/ephimeral0/zookeeper`
4. Add zoo.cfg box name in the cluster
5. Create myid file in /media/ephimeral0/zookeeper/myid 
6. Restart

