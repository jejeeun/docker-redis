o redis-server /etc/redis/redis_6300.conf
redis-cli --cluster create redis-node1:6300 redis-node2:6301 redis-node3:6302 --cluster-yes
redis-cli --cluster add-node redis-node4:6400 redis-node1:6300 --cluster-slave --cluster-yes
redis-cli --cluster add-node redis-node5:6401 redis-node2:6301 --cluster-slave --cluster-yes
redis-cli --cluster add-node redis-node6:6402 redis-node3:6302 --cluster-slave --cluster-yes
echo success

