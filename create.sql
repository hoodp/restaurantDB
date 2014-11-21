--CREATING TABLES
------------------------------
-------------------------------
--Ingredient ( iName, iSize, cost, calories, isVeg, shelfLife, isGF, qty )
CREATE TABLE Ingredient 
(
	iName CHAR NOT NULL,
	iSize FLOAT NOT NULL,
	cost  FLOAT NOT NULL,
	calories INTEGER NOT NULL,
	isVeg CHAR(1) NOT NULL,
	isGF CHAR(1) NOT NULL,
	shelfLife INTEGER NOT NULL,
	qty INTEGER NOT NULL,
	
	CONSTRAINT iIC1 PRIMARY KEY(iName, iSize),
	CONSTRAINT iIC2 CHECK (isVeg in ('T','F'),
	CONSTRAINT iIC2 CHECK (isGF in ('T','F')	
);
--Meal ( mID, name, timeOfDay, ldo, price ) 


