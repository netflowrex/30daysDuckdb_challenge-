use challenge ;


--Find the player with highest OVA and POT within each club 

WITH RankedPlayers
AS (
    SELECT f2.club, f1.POT, f2.Name, f1."↓OVA" AS HighestOVA,
    
    ROW_NUMBER() OVER (PARTITION BY f2.Club ORDER BY f1."↓OVA" DESC) AS RowNum
    
    FROM main.fifa_duckdb2 f2
    
    JOIN main.fifa_duckdb f1
    
    USING (ID)
)
SELECT club, Name, POT, HighestOVA, RowNum

FROM RankedPlayers

WHERE RowNum = 1;



--calculate the average OVA for players under 25 years old and over 30 years old in each club, 
--and round it to 2 decimal


SELECT Club,


       ROUND(AVG(CASE WHEN CAST(Age AS INT) < 25 THEN "↓OVA" ELSE NULL END),2) AS AvgOVA_Under25,
       
       ROUND(AVG(CASE WHEN CAST(Age AS INT) > 30 THEN "↓OVA" ELSE NULL END),2) AS AvgOVA_Over30
       
FROM main.fifa_duckdb2 

GROUP BY Club;


---

SELECT Club, 
       AVG("↓OVA") AS AverageOVA
       
FROM main.fifa_duckdb2 

WHERE CAST(Age AS INT) < 25 OR CAST(Age AS INT) > 30

GROUP BY Club;




--List the player who have the same age within each club


SELECT f2.Club, f1.Age, GROUP_CONCAT(f1.Name) AS PlayersWithSameAge
FROM main.fifa_duckdb  f1

JOIN main.fifa_duckdb2 f2

USING (ID)

GROUP BY f2.Club, f1.Age

HAVING COUNT(*) > 1;





--FIND THE PLAYER WITH THE HIGHEST POT FOR EACH NATIONALITY


SELECT "Name", Nationality, POT

FROM (
  SELECT "Name", Nationality, POT, 
  
  RANK() OVER (PARTITION BY Nationality ORDER BY POT DESC) AS player_Rank
  
  FROM main.fifa_duckdb2 
  
) AS RankedPlayer

WHERE player_Rank = 1

ORDER BY POT DESC;





--RANK PLAYERS BY THEIR OVA IN DESCENDING ORDER WITHIN CLUB

SELECT Club,"↓OVA", LongName , 

DENSE_RANK () OVER (PARTITION BY Club ORDER BY "↓OVA") AS Player_Rank

FROM main.fifa_duckdb2  

ORDER BY Club, Player_Rank DESC;















