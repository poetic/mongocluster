#!/bin/bash

vagrant up
vagrant ssh configsvr1 --command "sudo mkdir -p /data/configdb && sudo mongod --fork --logpath /var/log/mongod.log --configsvr --dbpath /data/configdb --port 27019"
vagrant ssh configsvr2 --command "sudo mkdir -p /data/configdb && sudo mongod --fork --logpath /var/log/mongod.log --configsvr --dbpath /data/configdb --port 27019"
vagrant ssh configsvr3 --command "sudo mkdir -p /data/configdb && sudo mongod --fork --logpath /var/log/mongod.log --configsvr --dbpath /data/configdb --port 27019"
vagrant ssh query1 --command "sudo service mongodb stop && sudo mongos --fork --syslog /var/log/mongos.log --configdb 192.168.50.10:27019,192.168.50.11:27019,192.168.50.12:27019"
vagrant ssh query2 --command "sudo service mongodb stop && sudo mongos --fork --syslog /var/log/mongos.log --configdb 192.168.50.10:27019,192.168.50.11:27019,192.168.50.12:27019"
vagrant ssh shard1 --command "mongo --host 192.168.50.13 --port 27017"