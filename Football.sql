# how many players are there in the datasets
 SELECT 
 COUNT(*)
 FROM fifa_players;
 
 -- how many nationalities does this players belong to
 SELECT
 COUNT(DISTINCT nationality)
 FROM fifa_players;
 
 --  which nationality has the highest number of players, what are the top 3 nationalities by # of players 
 SELECT 
 nationality,
 COUNT(*) AS  players_count
 FROM fifa_players
 GROUP BY nationality
 ORDER BY players_count 
 DESC 
 LIMIT 1;
 
 ---
  SELECT 
 nationality,
 COUNT(*) AS  players_count
 FROM fifa_players
 GROUP BY nationality
 ORDER BY players_count 
 DESC 
 LIMIT 3;
 
 # what is the total wage ,average wage and standard deviation wage given to all players 
 
 SELECT
 name,
SUM(Wage) AS total_wage,
AVG(Wage) AS average_wage,
STDDEV(Wage) AS wage_stddev
FROM fifa_players
GROUP BY name;
 
 -- which player has the highest wage and lowest wage 
 SELECT
 name,
 MAX(wage)
 FROM fifa_players	
 GROUP BY name 
 ORDER BY MAX(wage) DESC 
 LIMIT 1;
 
  SELECT
 name,
 MIN(wage)
 FROM fifa_players	
 GROUP BY name 
 ORDER BY MIN(wage) DESC 
 LIMIT 1;
 
-- which player has best overall rating and worst overall rating
SELECT 
 name
 FROM fifa_players	
 ORDER BY overall_rating DESC 
 LIMIT 1;

SELECT 
 name
 FROM fifa_players	
 ORDER BY overall_rating ASC 
 LIMIT 1;
 
 # Which are the top 3 Clubs with highest total of overall rating?
 SELECT
 club,
 SUM(overall_rating) as total_overall
  FROM fifa_players	
  GROUP BY club
  ORDER BY total_overall DESC
  LIMIT 3;
 
 # What are the top 5 clubs based on the average ratings of their players?
  SELECT
  name,
 club,
 AVG(overall_rating) as players_rate
FROM fifa_players	
GROUP BY club,name
ORDER BY players_rate DESC
LIMIT 5;

# What is the distribution of players whose preferred foot is left vs right?
  SELECT
  preferred_foot,
  COUNT(*) AS players
FROM fifa_players	
GROUP BY preferred_foot;

# Which jersey number is the luckiest?
SELECT
jersey_no,
COUNT(*)as luckiest
FROM fifa_players	
GROUP BY jersey_no
ORDER BY luckiest DESC 
LIMIT 1;

#11.	What is the average age of the players in the dataset?
SELECT
name,
AVG(age)as player_age
FROM fifa_players	
GROUP BY name;

# 12.	What is the distribution of overall ratings among the players?
SELECT
overall_rating,
COUNT(*) as distribution
FROM fifa_players	
GROUP BY overall_rating
ORDER BY overall_rating ASC;

#13.	Is there a correlation between age and potential rating?
SELECT
age,
potential_rating
FROM fifa_players;	

#14.	What is the average value and wage of the players in the dataset?
SELECT
name,
AVG(value) as average_value,
AVG(wage) as average_wage
FROM fifa_players
GROUP BY name;

# 15.	What is the most common jersey number among the players?

SELECT
name,
jersey_no,
COUNT(*)as common
FROM fifa_players	
GROUP BY jersey_no,name
ORDER BY common DESC 
LIMIT 1;

# 16.	What is the distribution of player heights in the dataset?
SELECT
name,
height,
COUNT(*) as player_height
FROM fifa_players
GROUP by height,name
ORDER BY player_height DESC;

# 17.	Is there a relationship between penalties and overall rating?
SELECT
penalties,
AVG(overall_rating)as average_rating
FROM fifa_players
GROUP BY penalties
ORDER BY penalties

 