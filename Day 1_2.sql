use challenege;

--to import the first dataset

SELECT * FROM read_csv_auto(["C:\Users\user\Desktop\portfoliodata\FIFA\fifa21_raw_data_dbduck1.csv"]);

CREATE TABLE fifa_duckdb AS SELECT * 

FROM read_csv_auto(["C:\Users\user\Desktop\portfoliodata\FIFA\fifa21 raw data v2.csv"]);

select * from fifa_duckdb;

DESCRIBE fifa_duckdb ;



--to import the second  dataset

SELECT * FROM read_csv_auto(["C:\Users\user\Desktop\portfoliodata\FIFA\fifa21 raw data v2.csv"]);

CREATE TABLE fifa_duckdb2 AS SELECT * 

FROM read_csv_auto(["C:\Users\user\Desktop\portfoliodata\FIFA\fifa21 raw data v2.csv"]);

select * from fifa_duckdb2 ;

DESCRIBE fifa_duckdb ;









