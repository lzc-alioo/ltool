#!/bin/bash

echo "加载组件:::lpid"


checkpid() {
    if [ 0 -eq $# ]; then
        echo "调用checkpid方法时至少需要一个参数"
        psid=0
        return
    fi
    key=$@

    javaps=`$JAVA_HOME/bin/jps -l | grep $key`

    if [ -n "$javaps" ]; then
        psid=`echo $javaps | awk '{print $1}'`
    else
        psid=0
    fi
}

