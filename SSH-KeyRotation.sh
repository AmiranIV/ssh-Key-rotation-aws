#!/bin/bash
##step1: 

if [ -n "KEY_PATH" ]; then
        ssh-keygen -f "new_key" -N "" -t rsa
	export NEW_KEY=$(cat new_key.pub)
	ssh -i "$KEY_PATH" 'ubuntu@'"$1" "echo $NEW_KEY >> ~/.ssh/authorized_keys"
fi

if [ ! -n "KEY_PATH" ]; then
       echo "KEY_PATH env var is expected"
       echo "Please provide IP address"
fi
###step 2: connect to the private from public with new key if correct rm new_key rm new_key.pub 

##Step3: drop one >  (append)# and remove the # from the script and run it seperetly! 
#note once you run it once the rotation is over to re run it again start from step 1 and assign the new key you generated inp previous steps
#to be the KEY_PATH not the old.pem file 

# !/bin/bash
# if [ -n "KEY_PATH" ]; then
#         ssh-keygen -f "new_key" -N "" -t rsa
# 	export NEW_KEY=$(cat new_key.pub)
# 	ssh -i "$KEY_PATH" 'ubuntu@'"$1" "echo $NEW_KEY > ~/.ssh/authorized_keys"
# fi

# if [ ! -n "KEY_PATH" ]; then
#        echo "KEY_PATH env var is expected"
#        echo "Please provide IP address"
# fi
