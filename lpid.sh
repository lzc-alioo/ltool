#!/bin/bash

echo "加载组件:::lpid"


checkpid() {
   javaps=`$JAVA_HOME/bin/jps -l | grep $targetjar`

   if [ -n "$javaps" ]; then
      psid=`echo $javaps | awk '{print $1}'`
   else
      psid=0
   fi
}

