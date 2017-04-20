#!/bin/sh

num=`ps -ef|grep redis-server|grep redis.conf|wc -l`;
log_dir="/data/logs/cron/redis.log"
t=`date +%Y%m%d%H%M`
echo $num;
echo $t;

if [ $num -eq 0 ];then
   echo $t+" "+$num+"\n" >>$log_dir
   /etc/init.d/redis start
fi
