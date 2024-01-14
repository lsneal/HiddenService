#!/bin/sh

# exec tor in background 
tor &

Cyan='\033[0;36m'
Yellow='\033[0;33m'


while true; do
    sleep 1
    # check path for log tor 
    log_file=$(ls /var/log/tor/ | grep '^notices.log' | tail -n 1)
    
    # verif tor bootstrap
    if [ -n "$log_file" ] && grep -q "Bootstrapped 100%" "/var/log/tor/$log_file"; then
        echo "Tor reaches 100% bootstrap."
        sleep 3
        
        # Print URL
        echo -e "\n${Yellow}[*] Onion URL: ${Cyan} 'http://'$(cat /var/lib/tor/hidden_service/hostname)\n"
        break
    fi 
done

sleep infinity