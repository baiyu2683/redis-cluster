#!/bin/bash
# 启动集群

dirs=(7000 7001 7002 7003 7004 7005)
dir_len=${#dirs[*]}

for dir in ${dirs[@]}
do
    cd ${dir}
    ../redis-server ./redis.conf
    cd ..
done
