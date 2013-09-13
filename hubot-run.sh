/usr/bin/redis-server &
/usr/bin/skype &
sleep 10; bin/hubot -a skype --name $HUBOT_NAME &
wait
