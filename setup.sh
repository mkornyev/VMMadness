#!/usr/bin/env bash

# Set up vars
CMDSTRINGONE='cd /home/vagrant; ssh-keygen -N "" -f ~/.ssh/id_rsa; sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub 10.0.0.201'
CMDSTRINGTWO='cd /home/vagrant; ssh-keygen -N "" -f ~/.ssh/id_rsa; sshpass -p "vagrant" ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub 10.0.0.200'

# Set up keygen for both machines 
vagrant up 
vagrant ssh vmOne -- -t $CMDSTRING
vagrant ssh vmTwo -- -t $CMDSTRING

# That's all folks!
