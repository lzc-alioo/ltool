#!/bin/bash
# can mv file or directory

newPath=${1};

function mvFile(){
     datestr=`date +%Y%m%d`;
     for (( i=0;i<100;i++ )) ; do
          tmp=${newPath}.${datestr}.${i};
          #echo ${tmp}
          if [ ! -f "${tmp}" ]; then
                 mv ${newPath} ${tmp};
                 break;
          fi
     done
}

function mvDirectory(){
     #remove directory last "/"
     tmp=${newPath:0-1:1}
     if [[ $tmp == "/" ]];then
          len=${#newPath};
          newLen=$((${len} - 1 ));
          newPath=${newPath:0:${newLen}};
     datestr=`date +%Y%m%d`;
     for (( i=0;i<100;i++ )) ; do
          tmp=${newPath}.${datestr}.${i};
          #echo ${tmp}
          if [ ! -d "${tmp}" ]; then
                 mv ${newPath} ${tmp};
                 break;
          fi
     done
}


function main() {

     if [ -d "${newPath}" ]; then
          mvDirectory ;
     elif [ -f "${newPath}" ]; then
           mvFile ;
     else
          echo "${newPath} is not a file or a directory,can't mv,please check it"
     fi

}

main