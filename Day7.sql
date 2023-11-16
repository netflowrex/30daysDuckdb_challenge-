USE CHALLENGE ;


select LongName,VALUE,Wage 
from fifa_duckdb 
limit 15 ;

--Task 2
		
-- Calculate the average of Value and Wage
-- Identify players with high value but low wages compared to the average

SELECT LongName, Value, Wage
FROM  fifa_duckdb
WHERE Value > (SELECT AVG(Value) FROM fifa_duckdb)
    AND Wage < (SELECT AVG(Wage) FROM fifa_duckdb)
GROUP BY LongName, Value, Wage
ORDER BY Wage
limit 15;


--- check out data 2

SELECT *
FROM fifa_duckdb2 
limit 15;


--  Determine the count of players available in the dataset for each position


SELECT "Best Position", COUNT(Name) AS PlayerCount
FROM fifa_duckdb2
GROUP BY "Best Position"
ORDER BY PlayerCount DESC
limit 15;



--which club has the largest representation of players in the dataset


SELECT *
FROM fifa_duckdb2 
limit 15;


SELECT MAX(f2.Club), COUNT(f1.LongName) AS PlayerCount 
FROM fifa_duckdb As f1
JOIN fifa_duckdb2 AS f2
USING (ID)
GROUP BY f2.Club
limit 15
;


-- top 10 players with the highest OVA and POT values


SELECT LongName, "↓OVA", "POT"
FROM fifa_duckdb
ORDER BY "↓OVA" DESC , POT  
LIMIT 10;



