#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#random number

#echo $RANDOM

COUNT=1

GAMES=0

  

#random number between 1 and 1000:

RANDOM_NUMBER=$(($RANDOM % 1000 +1))

#echo "Random Number is: $RANDOM_NUMBER"

#Verify your input is a number:
re='^[0-9]+$'

#Play and Guess the secret number between 1 and 1000:
Guess_a_number() {
 echo "Guess the secret number between 1 and 1000:"
 read GUESS_USER_NUMBER
 VALID_NUMBER=1
 while [ $VALID_NUMBER -gt 0 ]
  do
    if [[ $GUESS_USER_NUMBER =~ $re ]]
    then
      VALID_NUMBER=0
    else
      echo "That is not an integer, guess again:"
      read GUESS_USER_NUMBER
    fi
  done

  while [ ! $GUESS_USER_NUMBER -eq $RANDOM_NUMBER ]

  do

    if [[ $GUESS_USER_NUMBER -lt $RANDOM_NUMBER ]]
    then

      echo "It's higher than that, guess again:"

      COUNT=$((COUNT+1))

      read GUESS_USER_NUMBER

    elif [[ $GUESS_USER_NUMBER -gt $RANDOM_NUMBER ]]
    then

        echo "It's lower than that, guess again:"

        COUNT=$((COUNT+1))

        read GUESS_USER_NUMBER

    fi

  done
USER_ID=$($PSQL "SELECT user_id FROM guess_user WHERE username = '$USERNAME'")
GAMES=$($PSQL "SELECT games_played FROM guess_user WHERE username = '$USERNAME'");
GAMES=$((GAMES+1))

A=$($PSQL "INSERT INTO games(score, user_id) VALUES($COUNT, $USER_ID)");
B=$($PSQL "UPDATE guess_user SET games_played=$GAMES WHERE username = '$USERNAME'");
SCORE=$($PSQL "SELECT MIN(score) FROM games WHERE user_id ='$USER_ID'");
C=($PSQL "UPDATE guess_user SET best_game=$SCORE WHERE username = '$USERNAME'");
echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
exit
}




UserNameInput() {

  echo "Enter your username:"

  read USERNAME
  #username Length:
  USERNAME_LENGTH=${#USERNAME}

}

#Prompt the user to enter their username:
UserNameInput

#username Length:
USERNAME_LENGTH=${#USERNAME}

#Your database should allow usernames that are 22 characters
while [ $USERNAME_LENGTH -gt 22 ]
do
  echo "The username is higher than 22 characters length, please enter a valid username"
  UserNameInput
done

VERIFY_USERNAME=$($PSQL "SELECT user_id FROM guess_user WHERE username='$USERNAME'" );
if [[ -z $VERIFY_USERNAME ]]
then
  #echo "The User name entered does not exist"
  #If the username has not been used before, you should print Welcome, <username>! It looks like this is your first time here.

  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  #Add the new user to the database
  INSER_NEW_USER=$($PSQL "INSERT INTO guess_user(username, games_played, best_game) VALUES('$USERNAME', 0, 0)");
  Guess_a_number
else
  #If that username has been used before, it should print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
  
  USER_ID=$($PSQL "SELECT user_id FROM guess_user WHERE username = '$USERNAME'");
  SCORE=$($PSQL "SELECT MIN(score) FROM games WHERE user_id ='$USER_ID'");
  #SCORE=$($PSQL "SELECT best_game FROM guess_user WHERE username='$USERNAME'");
  GAMES=$($PSQL "SELECT games_played FROM guess_user WHERE user_id = $USER_ID");

  echo -e "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $SCORE guesses."
  Guess_a_number
  
fi
