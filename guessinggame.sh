#!/usr/bin/env bash
#Guessing game created for unixbash final assignment for coursera!
echo "[Welcome]"
function ask {
      echo "How many files are in the current directory:"  
read guess
files=$(ls -l | wc -l)
}
ask
while [[$guess -ne $files]]
do
       if [[$guess -lt $files]]
       then
   echo "Too high, try again"
   else
     echo "Too low, try again"
    fi 
  ask
Done
echo "Congrats"
