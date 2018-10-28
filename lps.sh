#!/bin/bash
# can cp file or directory

alias lps="ps -eo user,pid,%cpu,%mem,vsz,rss,tty,stat,lstart,etime,command --sort=%cpu |grep java"


ps -eo user,pid,%cpu,%mem,vsz,rss,tty,stat,lstart,etime,command --sort=%cpu |grep java