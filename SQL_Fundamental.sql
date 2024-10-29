-- What is SQL?

-- SQL stands for Structured Query Language
-- SQL is a language that is used to manage and manipulate data stored in a database.

-- What is DDL?

-- DDL stands for Data Definition Language
-- DDL is a language that is used to define the structure of a database

--  RDBMS Overview

-- RDBMS stands for Relational Database Management System
-- RDBMS is a software that is used to manage and manipulate data stored in a database



-- Some of The Most Important SQL Commands
--     SELECT - extracts data from a database
--     UPDATE - updates data in a database
--     DELETE - deletes data from a database
--     INSERT INTO - inserts new data into a database
--     CREATE DATABASE - creates a new database
--     ALTER DATABASE - modifies a database
--     CREATE TABLE - creates a new table
--     ALTER TABLE - modifies a table
--     DROP TABLE - deletes a table
--     CREATE INDEX - creates an index (search key)
--     DROP INDEX - deletes an index


-- Select Statement

SELECT column1, column2, ...
FROM table_name
WHERE condition

-- Insert Statement

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- Update Statement

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Delete Statement

DELETE FROM table_name
WHERE condition;

-- Drop Statement

DROP TABLE table_name

-- Alter Statement

ALTER TABLE table_name
ADD column_name datatype

-- Create Statement

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...
)

-- Create table with primary key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1)
)

-- Create table with foreign key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1)
) 

-- Create table with primary key and foreign key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1)
)

-- Create table with primary key and unique key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1)
)

-- Create table with primary key and unique key and foreign key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1)
)

-- Create table with primary key and unique key and foreign key and check constraint

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0)
)

-- Create table with primary key and unique key and foreign key and check constraint and default value

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0)
)

-- Create table with primary key and unique key and foreign key and check constraint and default value and not null

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0),
    NOT NULL (column_name1)
)

-- Create table with primary key and unique key and foreign key and check constraint and default value and not null and unique key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0),
    NOT NULL (column_name1),
    UNIQUE (column_name1)
)


-- Create table with primary key and unique key and foreign key and check constraint and default value and not null and unique key and not null

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0),
    NOT NULL (column_name1),
    UNIQUE (column_name1),
    NOT NULL (column_name1)
)

-- Create table with primary key and unique key and foreign key and check constraint and default value and not null and unique key and not null and unique key

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0),
    NOT NULL (column_name1),
    UNIQUE (column_name1),
    NOT NULL (column_name1),
    UNIQUE (column_name1)
)

-- Create table with primary key and unique key and foreign key and check constraint and default value and not null and unique key and not null and unique key and not null

CREATE TABLE table_name (
    column_name1 datatype,
    column_name2 datatype,
    ...,
    PRIMARY KEY (column_name1),
    UNIQUE (column_name1),
    FOREIGN KEY (column_name1) REFERENCES table_name (column_name1),
    CHECK (column_name1 > 0),
    DEFAULT (column_name1 = 0),
    NOT NULL (column_name1),
    UNIQUE (column_name1),
    NOT NULL (column_name1),
    UNIQUE (column_name1),
    NOT NULL (column_name1)
)

-- Index Statement

CREATE INDEX index_name
ON table_name (column_name1, column_name2, ...);

-- Drop Index Statement

DROP INDEX index_name

-- Cluster Statement

CLUSTER table_name
USING index_name

-- Non Cluster Statement

NON CLUSTER table_name

-- Recluster Statement

RECLUSTER table_name




-- Analyze Statement

ANALYZE table_name

-- Reindex Statement

REINDEX table_name

-- Lock Table Statement

LOCK TABLE table_name

-- Unlock Table Statement

UNLOCK TABLE table_name

-- Vacuum Statement

VACUUM table_name

-- Explain Statement

EXPLAIN table_name

-- Explain Analyze Statement

EXPLAIN ANALYZE table_name

-- Explain Query Plan Statement

EXPLAIN QUERY PLAN

-- Show Statement

SHOW table_name

-- Truncate Statement

TRUNCATE TABLE table_name





-- RDBMS Constraints

--     NOT NULL - ensures that a column cannot have a NULL value
--     UNIQUE - ensures that all values in a column are unique
--     PRIMARY KEY - a combination of a NOT NULL and UNIQUE constraint
--     FOREIGN KEY - a column that references the PRIMARY KEY of another table
--     CHECK - ensures that a value in a column satisfies a specific condition

-- Not NULL
Select * from table_name
where column_name1 IS NOT NULL

-- Primary Key
Select * from table_name
where column_name1 = value

-- Foreign Key
Select * from table_name
where column_name1 = value

-- Check
Select * from table_name
where column_name1 = value


-- RDBMS Functions

--     COUNT() - returns the number of rows in a table
--     SUM() - returns the sum of a column
--     AVG() - returns the average of a column
--     MIN() - returns the minimum value of a column
--     MAX() - returns the maximum value of a column

-- COUNT()

SELECT COUNT(column_name)
FROM table_name;


-- SUM()

SELECT SUM(column_name)
FROM table_name;


-- AVG()

SELECT AVG(column_name)
FROM table_name;


-- MIN()

SELECT MIN(column_name)
FROM table_name;


-- MAX()

SELECT MAX(column_name)
FROM table_name;



-- RDBMS Operators

--     = - equal to
--     <> - not equal to
--     > - greater than
--     < - less than
--     >= - greater than or equal to
--     <= - less than or equal to
--     AND - logical AND
--     OR - logical OR
--     NOT - logical NOT

-- = - equal to
Select * from table_name
where column_name1 = value

-- <> - not equal to
Select * from table_name
where column_name1 <> value

-- > - greater than
Select * from table_name
where column_name1 > value

-- < - less than
Select * from table_name
where column_name1 < value

-- >= - greater than or equal to
Select * from table_name
where column_name1 >= value

-- <= - less than or equal to
Select * from table_name
where column_name1 <= value

-- AND - logical AND
Select * from table_name
where column_name1 = value
and column_name2 = value

-- OR - logical OR
Select * from table_name
where column_name1 = value
or column_name2 = value

-- NOT - logical NOT
Select * from table_name
where not column_name1 = value



-- RDBMS Joins

--     INNER JOIN - returns rows that have matching values in both tables
--     LEFT JOIN - returns all rows from the left table, and the matching rows from the right table
--     RIGHT JOIN - returns all rows from the right table, and the matching rows from the left table
--     FULL JOIN - returns all rows from both tables
--     CROSS JOIN - returns all possible combinations of rows from both tables
--     SELF JOIN - joins a table to itself
--     UNION - combines the results of two or more SELECT statements
--     UNION ALL - combines the results of two or more SELECT statements, including duplicates
--     INTERSECT - returns rows that exist in both tables
--     EXCEPT - returns rows that exist in the first table, but not in the second table
--     NATURAL JOIN - joins two tables based on matching columns with the same name
--     NATURAL LEFT JOIN - joins two tables based on matching columns with the same name, and returns all rows from the left table
--     NATURAL RIGHT JOIN - joins two tables based on matching columns with the same name, and returns all rows from the right table
--     NATURAL FULL JOIN - joins two tables based on matching columns with the same name, and returns all rows from both tables
--     NATURAL CROSS JOIN - joins two tables based on matching columns with the same name, and returns all possible combinations of rows from both tables
--     NATURAL SELF JOIN - joins a table to itself based on matching columns with the same name
--     NATURAL UNION - combines the results of two or more SELECT statements based on matching columns with the same name
--     NATURAL UNION ALL - combines the results of two or more SELECT statements based on matching columns with the same name, including duplicates
--     NATURAL INTERSECT - returns rows that exist in both tables based on matching columns with the same name
--     NATURAL EXCEPT - returns rows that exist in the first table, but not in the second table based on matching columns with the same name


-- Inner Join

Select column_name1, column_name2
From table_name1
Inner Join table_name2
On table_name1.column_name1 = table_name2.column_name1

-- Left Join

Select column_name1, column_name2
From table_name1
Left Join table_name2
On table_name1.column_name1 = table_name2.column_name1


-- Right Join

Select column_name1, column_name2
From table_name1
Right Join table_name2
On table_name1.column_name1 = table_name2.column_name1


-- Full Join

Select column_name1, column_name2
From table_name1
Full Join table_name2
On table_name1.column_name1 = table_name2.column_name1


-- Cross Join

Select column_name1, column_name2
From table_name1
Cross Join table_name2


-- Self Join

Select column_name1, column_name2
From table_name1
Join table_name2
On table_name1.column_name1 = table_name2.column_name1

-- Union

Select column_name1, column_name2
From table_name1
Union
Select column_name1, column_name2
From table_name2


-- Union All

Select column_name1, column_name2
From table_name1
Union All
Select column_name1, column_name2
From table_name2


-- Intersect

Select column_name1, column_name2
From table_name1
Intersect
Select column_name1, column_name2
From table_name2


-- Except

Select column_name1, column_name2
From table_name1
Except
Select column_name1, column_name2
From table_name2


-- Natural Join

Select column_name1, column_name2
From table_name1
Natural Join table_name2


-- Natural Left Join

Select column_name1, column_name2
From table_name1
Natural Left Join table_name2


-- Natural Right Join

Select column_name1, column_name2
From table_name1
Natural Right Join table_name2


-- Natural Full Join

Select column_name1, column_name2
From table_name1
Natural Full Join table_name2


-- Natural Cross Join

Select column_name1, column_name2
From table_name1
Natural Cross Join table_name2


-- Natural Self Join

Select column_name1, column_name2
From table_name1
Natural Self Join table_name2


-- Natural Union

Select column_name1, column_name2
From table_name1
Natural Union
Select column_name1, column_name2
From table_name2


-- Natural Union All

Select column_name1, column_name2
From table_name1
Natural Union All
Select column_name1, column_name2
From table_name2


-- Natural Intersect

Select column_name1, column_name2
From table_name1
Natural Intersect
Select column_name1, column_name2
From table_name2


-- Natural Except

Select column_name1, column_name2
From table_name1
Natural Except
Select column_name1, column_name2
From table_name2

-- DISTINCT 

Select DISTINCT column_name1, column_name2
From table_name

-- ORDER BY

Select column_name1, column_name2
From table_name
Order By column_name1, column_name2


-- TOP, LIMIT, FETCH FIRST or ROWNUM Clause

-- TOP
Select column_name1, column_name2
From table_name
Order By column_name1, column_name2
Limit 10


-- LIMIT
Select column_name1, column_name2
From table_name
Order By column_name1, column_name2
Limit 10 Offset 0


-- FETCH FIRST
Select column_name1, column_name2
From table_name
Order By column_name1, column_name2
Fetch First 10 Rows Only


-- ROWNUM
Select column_name1, column_name2
From table_name
Order By column_name1, column_name2
Where ROWNUM <= 10

--  IN Operator

Select column_name1, column_name2
From table_name
Where column_name1 IN (value1, value2, value3)

-- NOT IN Operator

Select column_name1, column_name2
From table_name
Where column_name1 NOT IN (value1, value2, value3)

-- BETWEEN Operator

Select column_name1, column_name2
From table_name
Where column_name1 BETWEEN value1 AND value2

-- NOT BETWEEN Operator

Select column_name1, column_name2
From table_name
Where column_name1 NOT BETWEEN value1 AND value2

--  Aliases

Select column_name1, column_name2
From table_name
As column_name1, column_name2

-- GROUP BY

Select column_name1, column_name2
From table_name
Group By column_name1, column_name2

-- HAVING

Select column_name1, column_name2
From table_name
Group By column_name1, column_name2
Having column_name1 = value1

-- ROLLUP

Select column_name1, column_name2
From table_name
Group By column_name1, column_name2
Rollup

-- CUBE

Select column_name1, column_name2
From table_name
Group By column_name1, column_name2
CUBE

-- ROLLUP and CUBE

Select column_name1, column_name2
From table_name
Group By column_name1, column_name2
Rollup, CUBE

-- EXISTS 

Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1, column_name2
From table_name
Where column_name1 = value1)

-- NOT EXISTS 

Select column_name1, column_name2
From table_name
Where NOT EXISTS (Select column_name1, column_name2
From table_name
Where column_name1 = value1)

-- LIKE Operator

Select column_name1, column_name2
From table_name
Where column_name1 LIKE value1

-- NOT LIKE Operator

Select column_name1, column_name2
From table_name
Where column_name1 NOT LIKE value1

-- IS NULL Operator

Select column_name1, column_name2
From table_name
Where column_name1 IS NULL

-- IS NOT NULL Operator

Select column_name1, column_name2
From table_name
Where column_name1 IS NOT NULL

-- ANY 

Select column_name1, column_name2
From table_name
Where column_name1 = ANY (value1, value2, value3)

-- ALL

Select column_name1, column_name2
From table_name
Where column_name1 = ALL (value1, value2, value3)

-- INSERT INTO SELECT

Insert Into table_name
Select column_name1, column_name2
From table_name2

-- CASE

Select column_name1, column_name2
From table_name
Case
When column_name1 = value1
Then column_name2
When column_name1 = value2
Then column_name3
Else column_name4
End

-- NULLIF

Select column_name1, column_name2
From table_name
Nullif column_name1, value1

-- COALESCE

Select column_name1, column_name2
From table_name
Coalesce (column_name1, value1, value2)

-- NULLS FIRST and NULLS LAST

Select column_name1, column_name2
From table_name
Order By column_name1 NULLS FIRST, column_name2 NULLS LAST

--  Stored Procedures

Create Procedure procedure_name
As
Begin
Select column_name1, column_name2
From table_name
End

Execute procedure_name

-- Drop Procedure

Drop Procedure procedure_name

--  Triggers

Create Trigger trigger_name
As
Begin
Select column_name1, column_name2
From table_name
End

-- Drop Trigger

Drop Trigger trigger_name

--  Views

Create View view_name
As
Select column_name1, column_name2
From table_name

-- Drop View

Drop View view_name

--  Functions

Create Function function_name
As
Begin
Select column_name1, column_name2
From table_name
End

-- Drop Function

Drop Function function_name

--  Stored Functions

Create Function function_name
As
Begin
Select column_name1, column_name2
From table_name
End

-- Drop Stored Function

Drop Function function_name

-- GETDATE()

Select GETDATE()

-- CURRENT_TIMESTAMP

Select CURRENT_TIMESTAMP

-- CURRENT_USER

Select CURRENT_USER

-- CURRENT_ROLE

Select CURRENT_ROLE

-- CURRENT_SCHEMA

Select CURRENT_SCHEMA

-- CURRENT_CATALOG

Select CURRENT_CATALOG

-- CURRENT_DATABASE

Select CURRENT_DATABASE

-- CURRENT_PATH

Select CURRENT_PATH

-- CURRENT_TIME

Select CURRENT_TIME

-- CONVERT

Select CONVERT(varchar, column_name1)

-- CAST

Select CAST(column_name1 AS varchar)

-- TRY_CAST

Select TRY_CAST(column_name1 AS varchar)

-- TRY_CONVERT

Select TRY_CONVERT(varchar, column_name1)

-- Try PARSE

Select TRY_PARSE(varchar, column_name1)

-- TRY - CATCH EXCEPTIONS

Select TRY
Begin
Select column_name1, column_name2
From table_name
End
Catch
Select column_name1, column_name2
From table_name2

-- @@ERROR

SELECT @@ERROR

-- @@TRANCOUNT

SELECT @@TRANCOUNT

-- @@IDENTITY

SELECT @@IDENTITY

-- @@ROWCOUNT

SELECT @@ROWCOUNT


-- @@SPID

SELECT @@SPID

-- @@VERSION

SELECT @@VERSION

-- @@CONNECTIONS

SELECT @@CONNECTIONS


-- @@SERVERNAME

SELECT @@SERVERNAME


-- @@SERVICENAME

SELECT @@SERVICENAME


-- @@DBNAME

SELECT @@DBNAME


-- @@LANGUAGE

SELECT @@LANGUAGE


-- @@HOSTNAME

SELECT @@HOSTNAME


-- @@SERVERNAME

SELECT @@SERVERNAME


-- @@PORT

SELECT @@PORT


-- @@ISOLATIONLEVEL

SELECT @@ISOLATIONLEVEL


-- AUTO INCREMENT TABLE

Create Table table_name
(
column_name1 int identity (1,1) primary key,
column_name2 varchar(50)
)


-- AUTO INCREMENT VALUE

Select column_name1, column_name2
From table_name
Where column_name1 = @@IDENTITY


-- AUTO INCREMENT VALUE

Select column_name1, column_name2
From table_name
Where column_name1 = @@IDENTITY - 1


-- AUTO INCREMENT VALUE

Select column_name1, column_name2
From table_name
Where column_name1 = @@IDENTITY - 2


-- DataTypes

-- bigint - 8 bytes
-- binary - 1 to 8 bytes
-- bit - 0 or 1
-- char - 1 to 8000 bytes
-- date - 3 bytes
-- datetime - 8 bytes
-- datetime2 - 8 bytes
-- datetimeoffset - 10 bytes
-- decimal - 10 to 38 bytes
-- float - 4 bytes
-- image    - 1 to 2 GB
-- int - 4 bytes
-- money - 8 bytes
-- nchar - 1 to 4000 bytes
-- ntext - 2 to 2 GB
-- numeric - 10 to 38 bytes
-- nvarchar - 1 to 4000 bytes
-- real - 4 bytes
-- smalldatetime - 4 bytes
-- smallint - 2 bytes
-- smallmoney   - 4 bytes
-- text - 2 to 2 GB
-- time - 3 bytes 
-- tinyint - 1 byte
-- uniqueidentifier - 16 bytes
-- varbinary - 1 to 8000 bytes
-- varchar - 1 to 8000 bytes
-- xml - 2 to 2 GB




-- Basic Functions
    -- String Functions (e.g., CONCAT, UPPER, LOWER, LENGTH)
    -- Numeric Functions (e.g., ROUND, ABS)
    -- Date Functions (e.g., NOW, DATEADD, DATEDIFF)

-- String Functions

-- 1. CONCAT - Combines two or more strings into a single string
Select CONCAT(column_name1, column_name2)
From table_name

-- 2. UPPER - Returns a string in upper case
Select UPPER(column_name1, column_name2)
From table_name

-- 3. LOWER - Returns a string in lower case
Select LOWER(column_name1, column_name2)
From table_name

-- 4. LENGTH - Returns the length of a string
Select LENGTH(column_name1, column_name2)
From table_name

-- 5. SUBSTRING - Returns a subset of a string
Select SUBSTRING(column_name1, column_name2)
From table_name

-- 6. REPLACE - Replaces a substring with new value
Select REPLACE(column_name1, column_name2)
From table_name

-- 7. REVERSE - Reverses the order of a string
Select REVERSE(column_name1, column_name2)
From table_name

-- 8. LEFT - Returns a subset of a string from the left
Select LEFT(column_name1, column_name2)
From table_name

-- 9. RIGHT - Returns a subset of a string from the right
Select RIGHT(column_name1, column_name2)
From table_name

-- 10. LTRIM - Trims the left side of a string
Select LTRIM(column_name1, column_name2)
From table_name

-- 11. RTRIM - Trims the right side of a string
Select RTRIM(column_name1, column_name2)
From table_name

-- 12. TRIM - Trims the left and right side of a string
Select TRIM(column_name1, column_name2)
From table_name

-- 13. CHARINDEX - Returns the position of a substring in a string
Select CHARINDEX(column_name1, column_name2)
From table_name

-- 14. PATINDEX - Returns the position of a pattern in a string
Select PATINDEX(column_name1, column_name2)
From table_name

-- 15. REPLACE - Replaces a substring with new value
Select REPLACE(column_name1, column_name2)
From table_name

-- 16. REPLICATE - Repeats a string a specified number of times
Select REPLICATE(column_name1, column_name2)
From table_name

-- 17. SPACE - Returns a string with a specified number of spaces
Select SPACE(column_name1, column_name2)
From table_name

-- 18. STR - Converts a value to a string
Select STR(column_name1, column_name2)
From table_name

-- 19. STUFF - Replaces a substring with new value
Select STUFF(column_name1, column_name2)
From table_name

-- 20. SUBSTRING - Returns a subset of a string
Select SUBSTRING(column_name1, column_name2)
From table_name

-- 21. TRIM - Trims the left and right side of a string
Select TRIM(column_name1, column_name2)
From table_name


-- Numeric Functions

-- 1. ABS - Returns the absolute value
Select ABS(column_name1, column_name2)
From table_name

-- 2. CEILING - Returns the smallest integer greater than or equal to a number
Select CEILING(column_name1, column_name2)
From table_name

-- 3. FLOOR - Returns the largest integer less than or equal to a number
Select FLOOR(column_name1, column_name2)
From table_name

-- 4. ROUND - Rounds a number to a specified number of decimal places
Select ROUND(column_name1, column_name2)
From table_name

-- 5. SQRT - Returns the square root of a number
Select SQRT(column_name1, column_name2)
From table_name

-- 6. POWER - Returns the result of raising a number to a power
Select POWER(column_name1, column_name2)
From table_name

-- 7. RAND - Returns a random number
Select RAND(column_name1, column_name2)
From table_name

-- 8. SIGN - Returns the sign of a number
Select SIGN(column_name1, column_name2)
From table_name

-- 9. SQUARE - Returns the square of a number
Select SQUARE(column_name1, column_name2)
From table_name


-- Date Functions

-- 1. NOW - Returns the current date and time
Select NOW(column_name1, column_name2)
From table_name

-- 2. DATEADD - Adds a specified number of units to a date
Select DATEADD(column_name1, column_name2)
From table_name

-- 3. DATEDIFF - Returns the difference between two dates
Select DATEDIFF(column_name1, column_name2)
From table_name

-- 4. GETDATE - Returns the current date and time
Select GETDATE(column_name1, column_name2)
From table_name

-- 5. YEAR - Returns the year part of a date
Select YEAR(column_name1, column_name2)
From table_name

-- 6. MONTH - Returns the month part of a date
Select MONTH(column_name1, column_name2)
From table_name

-- 7. DAY - Returns the day part of a date
Select DAY(column_name1, column_name2)
From table_name

-- 8. HOUR - Returns the hour part of a time
Select HOUR(column_name1, column_name2)
From table_name

-- 9. MINUTE - Returns the minute part of a time
Select MINUTE(column_name1, column_name2)
From table_name

-- 10. SECOND - Returns the second part of a time
Select SECOND(column_name1, column_name2)
From table_name

-- 11. DATEPART - Returns the part of a date
Select DATEPART(column_name1, column_name2)
From table_name

-- 12. DATENAME - Returns the name of a part of a date
Select DATENAME(column_name1, column_name2)
From table_name

-- 13. DAYOFWEEK - Returns the day of the week
Select DAYOFWEEK(column_name1, column_name2)
From table_name

-- 14. MONTHNAME - Returns the name of the month
Select MONTHNAME(column_name1, column_name2)
From table_name

-- 15. DATEDIFF - Returns the difference between two dates
Select DATEDIFF(column_name1, column_name2)
From table_name

-- 16. DATEFROMPARTS - Returns a date from year, month, and day
Select DATEFROMPARTS(column_name1, column_name2)
From table_name

-- 17. TIMEFROMPARTS - Returns a time from hour, minute, and second
Select TIMEFROMPARTS(column_name1, column_name2)
From table_name

-- 18. DATETIMEFROMPARTS - Returns a date and time from year, month, day, hour, minute, and second 
Select DATETIMEFROMPARTS(column_name1, column_name2)
From table_name

-- 19. CONVERT - Converts a data type
Select CONVERT(column_name1, column_name2)
From table_name

-- 20. CAST - Converts a data type
Select CAST(column_name1, column_name2)
From table_name


-- Subqueries

-- 1. Subquery
Select column_name1, column_name2
From table_name
Where column_name1 = (Select column_name1
From table_name
Where column_name1 = value1)

-- 2. Subquery with IN
Select column_name1, column_name2
From table_name
Where column_name1 IN (Select column_name1
From table_name
Where column_name1 = value1)

-- 3. Subquery with EXISTS
Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 4. Subquery with NOT EXISTS
Select column_name1, column_name2
From table_name
Where NOT EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 5. Subquery with ANY
Select column_name1, column_name2
From table_name
Where column_name1 = ANY (Select column_name1
From table_name
Where column_name1 = value1)

-- 6. Subquery with ALL
Select column_name1, column_name2
From table_name
Where column_name1 = ALL (Select column_name1
From table_name
Where column_name1 = value1)

-- 7. Subquery with EXISTS and NOT EXISTS
Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1
From table_name
Where column_name1 = value1)
and NOT EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 8. Subquery with IN and NOT IN
Select column_name1, column_name2
From table_name
Where column_name1 IN (Select column_name1
From table_name
Where column_name1 = value1)
and column_name1 NOT IN (Select column_name1
From table_name
Where column_name1 = value1)

-- 9. Subquery with EXISTS and NOT EXISTS
Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1
From table_name
Where column_name1 = value1)
and NOT EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 10. Subquery with ANY and ALL
Select column_name1, column_name2
From table_name
Where column_name1 = ANY (Select column_name1
From table_name
Where column_name1 = value1)
and column_name1 = ALL (Select column_name1
From table_name
Where column_name1 = value1)

-- 11. Subquery with EXISTS and NOT EXISTS
Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1
From table_name
Where column_name1 = value1)
and NOT EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 12. Subquery with IN and NOT IN
Select column_name1, column_name2
From table_name
Where column_name1 IN (Select column_name1
From table_name
Where column_name1 = value1)
and column_name1 NOT IN (Select column_name1
From table_name
Where column_name1 = value1)

-- 13. Subquery with EXISTS and NOT EXISTS
Select column_name1, column_name2
From table_name
Where EXISTS (Select column_name1
From table_name
Where column_name1 = value1)
and NOT EXISTS (Select column_name1
From table_name
Where column_name1 = value1)

-- 14. Subquery with ANY and ALL
Select column_name1, column_name2
From table_name
Where column_name1 = ANY (Select column_name1
From table_name
Where column_name1 = value1)
and column_name1 = ALL (Select column_name1
From table_name
Where column_name1 = value1)



-- Temporary Tables and Table Variables

-- 1. Temporary Table
Create Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 1.1 Drop Temporary Table
Drop Temporary Table table_name

-- 1.2 Truncate Temporary Table
Truncate Temporary Table table_name

-- 1.3 Alter Temporary Table
Alter Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 1.4 Rename Temporary Table
Alter Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 1.5 Insert into Temporary Table
Insert into table_name
Select column_name1, column_name2
From table_name

-- 1.6 Select from Temporary Table
Select column_name1, column_name2
From table_name

-- 1.7 Delete from Temporary Table
Delete from table_name

-- 1.8 Update Temporary Table
Update table_name
Set column_name1 = column_name2

-- Temporary Tables various ways create

-- 1. Temporary Table under procedure
Create #Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 2. Temporary Table under function
Create Function #Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 3. Temporary Table under trigger
Create Trigger #Temporary Table table_name
As
Select column_name1, column_name2
From table_name

-- 4. Temporary Table under view
Create View #Temporary Table table_name
As
Select column_name1, column_name2
From table_name


-- 2. Table Variable
Set @table_name = Select column_name1, column_name2
From table_name


-- Common Table Expressions (CTE)

-- 1. CTE
With CTE_name
As
Select column_name1, column_name2
From table_name
Select column_name1, column_name2
From CTE_name

-- 2. Recursive CTE
With CTE_name
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1
)
Select column_name1, column_name2
From CTE_name

-- 3. Multiple CTE
With CTE_name1
As
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name1
Where column_name1 = value1
,
CTE_name2
As
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name2
Where column_name1 = value1

-- 4. CTE in Select
With CTE_name
As
Select column_name1, column_name2
From table_name
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1

-- 5. CTE in Update
With CTE_name
As
Select column_name1, column_name2
From table_name
Update CTE_name
Set column_name1 = column_name2
Where column_name1 = value1

-- 6. CTE in Delete
With CTE_name
As
Select column_name1, column_name2
From table_name
Delete CTE_name
Where column_name1 = value1

-- 7. CTE in Insert
With CTE_name
As
Select column_name1, column_name2
From table_name
Insert into CTE_name
Select column_name1, column_name2
From table_name

-- 8. CTE in View
With CTE_name
As
Select column_name1, column_name2
From table_name
Create View CTE_name
As
Select column_name1, column_name2
From CTE_name

-- 9. CTE in Trigger
With CTE_name
As
Select column_name1, column_name2
From table_name
Create Trigger CTE_name
As
Select column_name1, column_name2
From CTE_name

-- 10. CTE in Function
With CTE_name
As
Select column_name1, column_name2
From table_name
Create Function CTE_name
As
Select column_name1, column_name2
From CTE_name

-- 11. CTE in Procedure
With CTE_name
As
Select column_name1, column_name2
From table_name
Create Procedure CTE_name
As
Select column_name1, column_name2
From CTE_name

-- 12. CTE in Temporary Table
With CTE_name
As
Select column_name1, column_name2
From table_name
Create #Temporary Table CTE_name
As
Select column_name1, column_name2
From CTE_name

-- 13. CTE in Function
With CTE_name
As
Select column_name1, column_name2
From table_name
Create Function CTE_name
As
Select column_name1, column_name2
From CTE_name

-- Recursive CTEs

-- 1. Recursive CTE
With CTE_name
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1
)
Select column_name1, column_name2
From CTE_name

-- 2. Multiple Recursive CTE
With CTE_name1
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name1
Where column_name1 = value1
,
CTE_name2
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name2

-- 3. Recursive CTE in Select
With CTE_name
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1
)
Select column_name1, column_name2
From CTE_name

-- 4. Recursive CTE in Update
With CTE_name
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1
)
Update CTE_name
Set column_name1 = column_name2
Where column_name1 = value1

-- 5. Recursive CTE in Delete
With CTE_name
As
(
Select column_name1, column_name2
From table_name
Where column_name1 = value1
Union All
Select column_name1, column_name2
From CTE_name
Where column_name1 = value1
)
Delete CTE_name
Where column_name1 = value1


-- Table Partitioning for Large Datasets

-- 1. Table Partitioning
Select column_name1, column_name2
From table_name
Partition By column_name1

-- 2. Multiple Table Partitioning
Select column_name1, column_name2
From table_name
Partition By column_name1

-- 3. Table Partitioning in Select
Select column_name1, column_name2
From table_name
Partition By column_name1

-- 4. Table Partitioning in Update
Update table_name
Set column_name1 = column_name2
Partition By column_name1

-- 5. Table Partitioning in Delete
Delete table_name
Partition By column_name1

-- 6. Table Partitioning in Insert
Insert into table_name
Select column_name1, column_name2
Partition By column_name1

-- 7. Table Partitioning in View
Create View table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 8. Table Partitioning in Trigger
Create Trigger table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 9. Table Partitioning in Function
Create Function table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 10. Table Partitioning in Procedure
Create Procedure table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 11. Table Partitioning in Temporary Table
Create #Temporary Table table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 12. Table Partitioning in Function
Create Function table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 13. Table Partitioning in Stored Function
Create Function table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 14. Table Partitioning in Stored Procedure
Create Procedure table_name
As
Select column_name1, column_name2
Partition By column_name1

-- 15. Table Partitioning in Table Variable
Set @table_name = Select column_name1, column_name2
Partition By column_name1

-- 16. Table Partitioning in CTE
With CTE_name
As
Select column_name1, column_name2
Partition By column_name1

-- 17. Table Partitioning in Common Table Expressions
With CTE_name
As
(
Select column_name1, column_name2
Partition By column_name1
)
Select column_name1, column_name2
From CTE_name

-- 18. Table Partitioning in Common Table Expressions
With CTE_name
As
(
Select column_name1, column_name2
Partition By column_name1
)
Update CTE_name
Set column_name1 = column_name2
Partition By column_name1

-- 19. Table Partitioning in Common Table Expressions
With CTE_name
As
(
Select column_name1, column_name2
Partition By column_name1
)
Delete CTE_name
Partition By column_name1

-- Range and List Partitioning

-- 1. Range Partitioning
Select column_name1, column_name2
From table_name
Partition By Range (column_name1)

-- 2. Multiple Range Partitioning
Select column_name1, column_name2
From table_name
Partition By Range (column_name1)

-- 3. Range Partitioning in Select
Select column_name1, column_name2
From table_name
Partition By Range (column_name1)

-- 4. Range Partitioning in Update
Update table_name
Set column_name1 = column_name2
Partition By Range (column_name1)

-- 5. Range Partitioning in Delete
Delete table_name
Partition By Range (column_name1)

-- 6. Range Partitioning in Insert
Insert into table_name
Select column_name1, column_name2
Partition By Range (column_name1)

-- 7. Range Partitioning in View
Create View table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)

-- 8. Range Partitioning in Trigger
Create Trigger table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)

-- 9. Range Partitioning in Function
Create Function table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)

-- 10. Range Partitioning in Procedure
Create Procedure table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)

-- 11. Range Partitioning in Temporary Table
Create #Temporary Table table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)

-- 12. Range Partitioning in Function
Create Function table_name
As
Select column_name1, column_name2
Partition By Range (column_name1)


-- Managing and Maintaining Partitions

-- 1. Analyze Partition
Analyze Table table_name
Partition By column_name1

-- 2. Check Partition
Check Table table_name
Partition By column_name1

-- 3. Optimize Partition
Optimize Table table_name
Partition By column_name1

-- 4. Rebuild Partition
Rebuild Table table_name
Partition By column_name1

-- 5. Repair Partition
Repair Table table_name
Partition By column_name1

-- 6. Drop Partition
Drop Table table_name
Partition By column_name1

-- 7. Truncate Partition
Truncate Table table_name
Partition By column_name1

-- 8. Alter Partition
Alter Table table_name
Partition By column_name1   
Alter Table table_name

-- Dynamic SQL

-- 1. Dynamic SQL in Select
Select column_name1, column_name2
From table_name
Where column_name1 = value1
And column_name2 = value2

-- 2. Dynamic SQL in Update 
Update table_name
Set column_name1 = column_name2
Where column_name1 = value1
And column_name2 = value2

-- 3. Dynamic SQL in Delete
Delete table_name
Where column_name1 = value1
And column_name2 = value2

-- 4. Dynamic SQL in Insert
Insert into table_name
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2

-- 5. Dynamic SQL in View
Create View table_name
As
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2

-- 6. Dynamic SQL in Trigger
Create Trigger table_name
As
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2

-- 7. Dynamic SQL in Function
Create Function table_name
As
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2   

-- 8. Dynamic SQL in Procedure
Create Procedure table_name
As
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2

-- 9. Dynamic SQL in Temporary Table
Create #Temporary Table table_name
As
Select column_name1, column_name2
Where column_name1 = value1
And column_name2 = value2


-- SQL database backup and recovery

-- 1. SQL database backup
Backup database database_name
To disk = 'backup_file_name.bak'

-- 2. SQL database recovery
Restore database database_name
From disk = 'backup_file_name.bak'

-- 3. SQL database restore
Restore database database_name
From disk = 'backup_file_name.bak'
With move 'database_name' to 'new_database_name.mdf',
move 'database_name_log' to 'new_database_name_log.ldf'





-- Expert-Level SQL Concepts
-- -- Dynamic SQL

-- Writing and Executing Dynamic SQL Queries
-- Security and Performance Considerations
-- Data Warehousing Concepts

-- Introduction to Data Warehousing
-- OLAP and OLTP Systems
-- Star and Snowflake Schemas
-- Advanced Security Management

-- User Roles and Permissions
-- Row-Level Security
-- Data Masking
-- Backup and Recovery

-- Backup Strategies (Full, Incremental)
-- Recovery Techniques
-- Point-in-Time Recovery
-- Replication and Sharding

-- Database Replication Techniques
-- Sharding for Distributed Databases
-- Database Clustering
-- Big Data and SQL

-- Introduction to NoSQL Databases
-- Working with SQL in Big Data Environments (e.g., Spark SQL, Hive)
-- Performance Tuning and Optimization

-- Query Tuning and Index Optimization
-- Caching Strategies
-- Optimizing SQL Code for High Concurrency
