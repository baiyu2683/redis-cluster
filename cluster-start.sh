#!/bin/bash
# 启动集群

dirs=(7000 7001 7002 7003 7004 7005)
dir_len=${#dirs[*]}

for dir in ${dirs[@]}
do
    cd ${dir}
    nohup ../redis-server ./redis.conf >/dev/null 2>&1 &
    cd ..
done
