#!/usr/bin/env bash
# File: guessinggame.sh

num_files=$(ls -l | egrep ^- | wc -l)
echo "Please type in your guess of the number of files in the current directory."
read guess
let err=$guess-$num_files

if [[ $err -le -5 ]]
then
   echo "Your guess is too low."
elif [[ $err -gt -5 && $err -lt 0 ]]
then
   echo "Your guess is close but lower than the actual number."
elif [[ $err -gt 0 && $err -lt 5 ]]
then
   echo "Your guess is close but higher than the actual number."
elif [[ $err -ge 5 ]]
then
   echo "Your guess is too high."
fi

function guessinggame {
   echo "Please type in your guess of the number of files in the current directory."
   read guess
   let err=$guess-$num_files

   if [[ $err -le -5 ]]
   then
      echo "Your guess is too low."
   elif [[ $err -gt -5 && $err -lt 0 ]]
   then
      echo "Your guess is close but lower than the actual number."
   elif [[ $err -gt 0 && $err -lt 5 ]]
   then
      echo "Your guess is close but higher than the actual number."
   elif [[ $err -ge 5 ]]
   then
      echo "Your guess is too high."
   fi
}

while [[ $err -ne 0 ]]
do
   guessinggame
done

echo "Congratulations!!! You got it."