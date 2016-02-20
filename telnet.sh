#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
    echo "Usage: $0 <HOST> <PORT> <COMMAND>"
    exit 1
fi

expect << EOF
spawn telnet $1 $2
expect -re ".*>"
send "$3\r"
expect -re ".*>"
send "quit\r"
EOF
