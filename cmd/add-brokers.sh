eth0_ipaddr=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
./start-broker.sh 4 9094 $eth0_ipaddr
./start-broker.sh 5 9095 $eth0_ipaddr
./start-broker.sh 6 9096 $eth0_ipaddr
./start-broker.sh 7 9097 $eth0_ipaddr
./start-broker.sh 8 9098 $eth0_ipaddr
./start-broker.sh 9 9099 $eth0_ipaddr
