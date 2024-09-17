
#!/bin/bash 

echo "$0 - is the zero argument" 
echo "$1 - is the one argument" 
echo "$2 - is the two argument" 

clear

echo "Let me add up $1 and $2 for you, dear flesh creature." 

SUM=$(( $1 + $2 ))

sleep 3

echo "Processing..."

sleep 1

echo "The sum $SUM. You couldn't have done that on your own, could've you." 

