use challenge;


-- Add a new column for converted weight (assuming the weight is in pounds)

ALTER TABLE fifa_duckdb 
ADD COLUMN weight_Int INT;

--to convert the weight
UPDATE fifa_duckdb
SET Weight_Int = LEFT(Weight,3);


--TO transform my data i will need to delete the previous weight column
ALTER TABLE fifa_duckdb
DROP COLUMN Weight;


--To rename the newly created column to the previous column name
ALTER TABLE fifa_duckdb
RENAME COLUMN Weight_Int TO Weight


-- Change the "Height" column to INT data type
ALTER TABLE fifa_duckdb
ADD COLUMN Height_Int INT;


--to convert the value we want to convert
UPDATE fifa_duckdb
SET Height_Int = LEFT(Height,1);


--TO transform my data i will need to delete the previous height column
ALTER TABLE fifa_duckdb
DROP COLUMN Height;


--to rename the height_int to the main name Height
ALTER TABLE fifa_duckdb
RENAME COLUMN Height_Int TO Height


select Height,Weight,value,wage,"Release Clause"
from fifa_duckdb 
limit 15 ;



-- To remove the Euro sign and as well the K and M in Value

UPDATE fifa_duckdb  
SET Value = 
  CASE
    WHEN Value LIKE '€%K' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'K', '') AS INT) * 1000
    WHEN Value LIKE '€%M' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'M', '') AS INT) * 1000000
    ELSE CAST(REPLACE(Value, '€', '') AS INT)
  END;
 
 
--To convert the column to Decimal
 
ALTER TABLE fifa_duckdb  
ALTER COLUMN "Value" TYPE DECIMAL;

select Height,Weight,value,wage,"Release Clause"
from fifa_duckdb 
limit 15 ;



 -- To remove the Euro sign and as well the K and M in Wages

UPDATE fifa_duckdb  
SET Wage = 
  CASE
    WHEN Wage LIKE '€%K' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'K', '') AS DECIMAL(10, 2)) * 1000
    WHEN Wage LIKE '€%M' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'M', '') AS DECIMAL(10, 2)) * 1000000
    ELSE CAST(REPLACE(Wage, '€', '') AS DECIMAL(10, 2))
  END;

 
  --To convert the column to DECIMAL
 
 
ALTER TABLE fifa_duckdb 
ALTER COLUMN "Wage" TYPE DECIMAL;


select Height,Weight,value,wage,"Release Clause"
from fifa_duckdb 
limit 15 ;


  -- To remove the Euro sign and as well the K and M in Release Clause

UPDATE main.fifa_duckdb 
SET "Release Clause"  = 
  CASE
    WHEN "Release Clause"  LIKE '€%K' THEN CAST(REPLACE(REPLACE("Release Clause"  , '€', ''), 'K', '') 
    AS DECIMAL(10, 2)) * 1000
    WHEN "Release Clause"  LIKE '€%M' THEN CAST(REPLACE(REPLACE("Release Clause"  , '€', ''), 'M', '') 
    AS DECIMAL(10, 2)) * 1000000
    ELSE CAST(REPLACE("Release Clause"  , '€', '') AS DECIMAL(10, 2))
  END;
 
 ---To change the datatype
 
ALTER TABLE main.fifa_duckdb 
ALTER COLUMN "Release Clause" TYPE DECIMAL;


select Height,Weight,value,wage,"Release Clause"
from fifa_duckdb 
limit 15 ;



--To convert the SM, W/F IR columns

ALTER TABLE main.fifa_duckdb 
ADD COLUMN SM_Int INT;

--To extract the value that we want from SM column
UPDATE main.fifa_duckdb 
SET SM_Int = LEFT(SM,1);


--TO transform my data i will need to delete the previous SM column
ALTER TABLE main.fifa_duckdb  
DROP COLUMN SM;

-- to rename the column to its original name
ALTER TABLE main.fifa_duckdb  
RENAME COLUMN SM_Int TO SM

select "SM", "IR" ,"W/f"
from fifa_duckdb 
limit 15 ;

--To remove the Star symbol and also covert the values in column "W/F" and IR to integer


UPDATE main.fifa_duckdb 
SET IR = CAST(REPLACE(REPLACE(IR, '*', ''), '★', '') AS INT),
    "W/F"  = CAST(REPLACE(REPLACE("W/F" , '*', ''), '★', '') AS INT);
   
-- To convert the IR and W/F to an Int
ALTER TABLE main.fifa_duckdb  
ALTER COLUMN IR TYPE INT;
ALTER TABLE main.fifa_duckdb  
ALTER COLUMN "W/F" TYPE INT;


select  "IR" ,"W/f"
from fifa_duckdb 
limit 15 ;













































