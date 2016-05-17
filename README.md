# Getting Started

`git clone https://github.com/poetic/mongocluster`

`cd mongocluster`

`./init.sh`


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
