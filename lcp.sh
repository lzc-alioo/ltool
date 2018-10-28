#!/bin/bash
# can cp file or directory

newPath=${1};

function copyFile(){
     datestr=`date +%Y%m%d`;
     for (( i=0;i<100;i++ )) ; do
          tmp=${newPath}.${datestr}.${i};
          #echo ${tmp}
          if [ ! -f "${tmp}" ]; then
                 cp -r ${newPath} ${tmp};
                 break;
          fi
     done
}

function copyDirectory(){
     #remove directory last "/"
     tmp=${newPath:0-1:1}
     if [[ $tmp == "/" ]];then
          len=${#newPath};
          newLen=$((${len} - 1 ));
          newPath=${newPath:0:${newLen}};
     fi

     datestr=`date +%Y%m%d`;
     for (( i=0;i<100;i++ )) ; do
          tmp=${newPath}.${datestr}.${i};
          #echo ${tmp}
          if [ ! -d "${tmp}" ]; then
                 cp -r ${newPath} ${tmp};
                 break;
          fi
     done
}


function main() {

     if [ -d "${newPath}" ]; then
          copyDirectory ;
     elif [ -f "${newPath}" ]; then
          copyFile ;
     else
          echo "${newPath} is not a file or a directory,can't copy,please check it"
     fi

}

main