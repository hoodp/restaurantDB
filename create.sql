--CREATING TABLES
------------------------------
-------------------------------
--Ingredient ( iName, iSize, cost, calories, isVeg, shelfLife, isGF, qty )
CREATE TABLE Ingredient 
(
	iName CHAR(20) NOT NULL,
	iSize FLOAT NOT NULL,
	cost  FLOAT NOT NULL,
	calories INTEGER NOT NULL,
	isVeg CHAR(1) NOT NULL,
	isGF CHAR(1) NOT NULL,
	shelfLife INTEGER NOT NULL,
	qty INTEGER NOT NULL,
--
	--Primary key
	CONSTRAINT iIC1 PRIMARY KEY(iName, iSize),
	--isVeg must be T or F
	CONSTRAINT iIC2 CHECK (isVeg in ('T','F')),
	--isGF must be T or F
	CONSTRAINT iIC3 CHECK (isGF in ('T','F'))	
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
	--price must be greater than sum of ingredients
	--??
);
INSERT INTO Ingredient VALUES ('sirloin', 9, 5.50, 200, 'F', 'T', 2, 40);
INSERT INTO Ingredient VALUES ('sirloin', 7, 4.50, 175, 'F', 'T', 2, 40);
INSERT INTO Ingredient VALUES ('mashed potato', 4, .92, 250, 'T', 'T', 3, 90);
INSERT INTO Ingredient VALUES ('chicken breast', 4, 3.22, 250, 'F', 'T', 2, 40);
INSERT INTO Ingredient VALUES ('romaine', 3, 1.15, 15, 'T', 'T', 2, 15);
INSERT INTO Ingredient VALUES ('caesar', 2, .45, 200, 'F', 'T', 7, 200);
INSERT INTO Ingredient VALUES ('chicken breast', 8, 4.22, 250, 'F', 'T', 2, 40);
INSERT INTO Meal VALUES (0, 'House Steak', 'dinner', TO_DATE('11/19/14','MM/DD/YY'), 12.50);
INSERT INTO Meal VALUES (1, 'Chicken Caesar Salad', 'dinner', TO_DATE('11/19/14','MM/DD/YY'), 9.00);
INSERT INTO Meal VALUES (2, 'Chicken Caesar Salad', 'lunch', TO_DATE('11/19/14','MM/DD/YY'), 7.00);
