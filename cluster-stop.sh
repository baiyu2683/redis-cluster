#!/bin/bash
# 停止集群

dirs=(7000 7001 7002 7003 7004 7005)
dir_len=${#dirs[*]}

for dir in ${dirs[@]}
do
    cd ${dir}
    ../redis-cli -p ${dir} -a foobared shutdown > /dev/null
    cd ..
done
