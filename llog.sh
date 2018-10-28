#!/bin/bash

#echo "加载组件::: $(cd `dirname $0`/; pwd) ::: $(echo $0 | awk -F'/' '{print $NF}') "
echo "加载组件:::llog"


log() {
    local curtime=`date "+%Y-%m-%d %H:%M:%S"`
    echo "$curtime $*"
}
