SET ECHO ON
/*
CIS 353 - Database Design Project
Josh Hoiland
Paul Hood
Zack Smith
Christopher Mahoney
*/

< The SQL/DDL code that creates your schema >
--In the DDL, every IC must have a unique name; e.g. IC5, IC10, IC15, etc.
--
SET FEEDBACK OFF
< The INSERT statements that populate the tables>
--Important: Keep the number of rows in each table small enough so that the results of your queries can be verified by hand. See the Sailors database as an example.
SET FEEDBACK ON
COMMIT
--
SELECT * from Ingredient;
SELECT * from Meal;
SELECT * from Chef;
SELECT * from SeasonalMenu;
SELECT * from SpecialsMenu;
SELECT * from Season;
SELECT * from DaysOfWeek;
SELECT * from IsInMeal;
SELECT * from MadeBy;
SELECT * from IsOnSeMenu;
SELECT * from IsOnSpecMenu;
SELECT * from Substitutes;
--
< The SQL queries>
/*Include the following for each query:
1. A comment line stating the query number and the feature(s) it demonstrates (e.g. – Q25 – correlated subquery).
2. A comment line stating the query in English.
3. The SQL code for the query.
*/
--
< The insert/delete/update statements to test the enforcement of ICs >
/*
Include the following items for every IC that you test (Important: see the next section titled “Submit a final report” regarding which ICs to test).
1. A comment line stating: Testing: < IC name>
2. A SQL INSERT, DELETE, or UPDATE that will test the IC.
3. COMMIT
*/
--
SPOOL OFF