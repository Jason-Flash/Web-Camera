trap "echo 'stop';exit 0" SIGINT SIGKILL
while :
do
    raspistill -o /var/www/html/webMonitor.jpg -t 1000 -w 256 -h 192
done
