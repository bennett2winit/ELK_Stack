#!/bin/bash
echo -n " Enter: date(4 digit) time(2 digit hour) AM/PM GAME(blackjack, roulette, or holdem > "
read DATE TIME AMPM GAME

if [[ $GAME = roulette ]]
then 
	gvar=3
elif [[ $GAME = blackjack ]]
then 
	gvar=2

elif [[ $GAME = holdem ]]
then 
	gvar=4
else
	echo "Need to specify game"
fi
cat $DATE"_Dealer_schedule"  | grep -i "$TIME":00:00" $AMPM" | awk -v worked=$gvar -F"\t" '{print $1,$'worked'}'
