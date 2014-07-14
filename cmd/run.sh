eth0_ipaddr=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
./start-broker.sh 1 9091 $eth0_ipaddr
./start-broker.sh 2 9092 $eth0_ipaddr
./start-broker.sh 3 9093 $eth0_ipaddr
