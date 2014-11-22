--CREATING TABLES
------------------------------
-------------------------------
--Ingredient ( iName, iSize, cost, calories, isVeg, shelfLife, isGF, qty )
CREATE TABLE Ingredient 
(
	iID INTEGER NOT NULL,
	iName CHAR(20) NOT NULL,
	iSize FLOAT,
	cost  FLOAT NOT NULL,
	calories INTEGER NOT NULL,
	qty INTEGER NOT NULL,
--
	--Primary key
	CONSTRAINT iIC1 PRIMARY KEY(iID)	
);
--Meal ( mID, name, timeOfDay, ldo, price ) 
CREATE TABLE Meal
(
	meID INTEGER NOT NULL,
	meName CHAR(20) NOT NULL,
	timeOfDay CHAR(20),
	ldo DATE,
	price FLOAT NOT NULL,
	--
	--Primary key
	CONSTRAINT meIC1 PRIMARY KEY(meID),
	--timeOfDay must be breakfast, lunch, or dinner
	CONSTRAINT meIC2 CHECK (timeOfDay in ('breakfast', 'lunch','dinner'))
);
--IsInMeal( ing, meal )
CREATE TABLE IsInMeal
(
	ing INTEGER NOT NULL,
	meal INTEGER NOT NULL,
	--
	--Primary Key
	CONSTRAINT inMeIC1 PRIMARY KEY (ing,meal),
	--Foreign Key (Ingredient ID)
	CONSTRAINT inMeIC2 FOREIGN KEY (ing) REFERENCES Ingredient(iID) ON DELETE CASCADE,
	--Foreign Key (Meal ID)
	CONSTRAINT inMeIC3 FOREIGN KEY (meal) REFERENCES Meal(meID) ON DELETE CASCADE	
);
--
--Populate Ingredient Table
INSERT INTO Ingredient VALUES (0,'sirloin', 9, 5.50, 200, 40);
INSERT INTO Ingredient VALUES (1,'sirloin', 7, 4.50, 175, 40);
INSERT INTO Ingredient VALUES (2,'mashed potato', 4, .92, 250, 90);
INSERT INTO Ingredient VALUES (3,'chicken breast', 4, 3.22, 250, 40);
INSERT INTO Ingredient VALUES (4,'romaine', 3, 1.15, 15, 15);
INSERT INTO Ingredient VALUES (5,'caesar', 2, .45, 200, 200);
INSERT INTO Ingredient VALUES (6,'chicken breast', 8, 4.22, 250, 40);
INSERT INTO Ingredient VALUES (7,'romaine', 5, 1.85, 15, 15);
INSERT INTO Ingredient VALUES (8,'caesar', 3, .55, 200, 200);
--
--Populate Meal Table
INSERT INTO Meal VALUES (0, 'House Steak', 'dinner', TO_DATE('11/19/14','MM/DD/YY'), 12.50);
INSERT INTO Meal VALUES (1, 'Chicken Caesar Salad', 'dinner', TO_DATE('11/19/14','MM/DD/YY'), 9.00);
INSERT INTO Meal VALUES (2, 'Chicken Caesar Salad', 'lunch', TO_DATE('11/19/14','MM/DD/YY'), 7.00);
--
--Populate IsInMeal Table
INSERT INTO IsInMeal VALUES(0,0);
INSERT INTO IsInMeal VALUES(2,0);
INSERT INTO IsInMeal VALUES(3,1);
INSERT INTO IsInMeal VALUES(4,1);
INSERT INTO IsInMeal VALUES(5,1);
INSERT INTO IsInMeal VALUES(6,2);
INSERT INTO IsInMeal VALUES(7,2);
INSERT INTO IsInMeal VALUES(8,2);