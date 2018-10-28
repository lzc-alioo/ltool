#!/bin/bash

echo "加载组件::: $(cd `dirname $0`/; pwd) ::: $(echo $0 | awk -F'/' '{print $NF}') "


checkpid() {
   javaps=`$JAVA_HOME/bin/jps -l | grep $targetjar`

   if [ -n "$javaps" ]; then
      psid=`echo $javaps | awk '{print $1}'`
   else
      psid=0
   fi
}

