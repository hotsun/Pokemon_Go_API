#!/bin/bash
export TERM=xterm

random_index=$(( $RANDOM % ${#start[@]}))
start_location=${start[$random_index]}
delay=$(( 300 + $(( $RANDOM % 600 )) ))

pip install -r ./requirements.txt

python -u ./main.py -t $AUTH_TYPE -u $USER -p $PASSWORD -l "$LOCATION"

sleep $delay
exit 1
