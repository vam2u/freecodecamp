#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# TRUNCATE TABLES
echo -e "\nTruncate Games and Teams tables\n"
echo $($PSQL "TRUNCATE teams, games, tmpgames")

echo -e "\nLoad temp into table\n"
echo $($PSQL "\copy tmpgames from 'games.csv' delimiter ',' csv header")

echo -e "\nInsert into teams\n"
echo $($PSQL "insert into teams (name) select distinct winner from tmpgames union select distinct opponent from tmpgames order by 1")

echo -e "\nInsert into games\n"
echo $($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) select year, round, (SELECT team_id FROM teams WHERE teams.name = tmpgames.winner), (SELECT team_id FROM teams WHERE teams.name = tmpgames.opponent), winner_goals, opponent_goals FROM tmpgames")
