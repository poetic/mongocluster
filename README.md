# Getting Started

`git clone https://github.com/poetic/mongocluster`

`cd mongocluster`

`vagrant up`


# Set Up

| Name       | Type          |
|------------|---------------|
| configsrv1 | Config server |
| configsrv2 | Config server |
| configsrv3 | Config server |
| query1     | Query router  |
| query2     | Query router  |
| shard1     | Shard server  |
| shard2     | Shard server  |
| shard3     | Shard server  |


### Config Servers

* Run these commands on `configsvr1`, `configsvr2`, `configsvr3`

##### ssh in

`vagrant ssh configsvr1`

##### create a metadata directory

`sudo mkdir -p /data/configdb`

##### start up the configuration server

`sudo mongod --configsvr --dbpath /data/configdb --port 27019`


### Query Routers

* Run these commands on `query1` and `query2`

##### ssh in

`vagrant ssh query1`

##### stop mongodb

`sudo service mongodb stop`

##### start the query router service

`sudo mongos --configdb 192.168.50.10:27019,192.168.50.11:27019,192.168.50.12:27019`


### Add Shards to Cluster

##### ssh in

`vagrant ssh shard1`

##### connect to a query router

`mongo --host 192.168.50.13 --port 27017`

##### add each shard

* you can run these commands on this machine

`sh.addShard( "192.168.50.15:27017" )`

`sh.addShard( "192.168.50.16:27017" )`

`sh.addShard( "192.168.50.17:27017" )`
