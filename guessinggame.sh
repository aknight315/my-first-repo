#!/bin/bash

##Created for final assignment for coursera##
echo "Hello!!"
function ask { 
echo "How many files are in the curent directory?"
read guess
}
files=$(ls -q | wc -l)
##This is a value test##
##echo "$files"
ask

##This is asking while the guess is not equal to file number do## 
while (( "$guess" != "$files" ))
do
##While reading guess if too low say "Too low try again"##
if (( "$guess" > "$files" )); 
	then
	echo "Too high try again"
ask
##While reading guess if too high say "Too high try again##
elif (( "$guess" < "$files" ));
	then
	echo "Too low try again"
ask
elif (( "$guess" == "$files" ));
        then
        echo "Congrats"
##If correct at this point say Congrats and finish the do with done##
fi
done

echo "Congrats"
