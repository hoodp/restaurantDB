--CREATING TABLES
------------------------------
-------------------------------
--Ingredient ( [id], name, isVeg, isGF, shelfLife, unit, costPerUnit, calsPerUnit, unitsOnHand )
CREATE TABLE Ingredient 
(
	id INTEGER NOT NULL,
	name CHAR(20) NOT NULL,
	isVeg  NUMBER(1) NOT NULL,
	isGF NUMBER(1) NOT NULL,
	shelfLife INTEGER NOT NULL,
	unit CHAR(4) NOT NULL,
	costPerUnit FLOAT NOT NULL,
	calsPerUnit FLOAT NOT NULL,
	unitsOnHand INTEGER NOT NULL,
--
	--Primary key
	CONSTRAINT ingredientIC1 PRIMARY KEY(id),
	--Bool 
	CONSTRAINT ingredientIC2 CHECK ( isVeg >=0 AND isVeg <=1),
	CONSTRAINT ingredientIC3 CHECK (isGF >=0 AND isGF <=1),
	--Unit
	CONSTRAINT ingredientIC4 CHECK (unit IN ('each', 'oz'))
);
--
--Populate Ingredient Table
INSERT INTO Ingredient VALUES (0,'9oz sirloin',0,1, 3, 'each', 5.75, 300, 45) ;
INSERT INTO Ingredient VALUES (2,'mashed potato',1,1, 3, 'oz', .89, 200, 482);
INSERT INTO Ingredient VALUES (3,'4 oz chicken breast', 0,1, 3,  'each', 2.56, 200, 45);
INSERT INTO Ingredient VALUES (4,'romaine', 1,1,3, 'oz', .60, 29, 200) ;
INSERT INTO Ingredient VALUES (5,'caesar', 0,1,10, 'oz', .7, 40, 1000);
--
--Meal ( [id], name, category, timeOfDay, price, ldo )
CREATE TABLE Meal
(
	id INTEGER NOT NULL,
	name CHAR(20) NOT NULL,
	category CHAR(20) NOT NULL,
	timeOfDay CHAR(20),
	price FLOAT NOT NULL,
	ldo DATE,
	--
	--Primary key
	CONSTRAINT mealIC1 PRIMARY KEY(id),
	--timeOfDay must be breakfast, lunch, or dinner
	CONSTRAINT mealIC2 CHECK (timeOfDay in ('breakfast', 'lunch','dinner')),
	--categories
	CONSTRAINT mealIC3 CHECK (category IN ('egg', 'salad', 'appetizer', 'sandwich', 'pasta', 'seafood', 'steak', 'chicken', 'pork', 'dessert' ) ),
	--category can’t be egg if timeOfDay is not breakfast
	CONSTRAINT mealIC4 CHECK (timeOfDay = 'breakfast' OR category != 'egg' )
);
--Populate Meal Table
INSERT INTO Meal VALUES (0, 'House Steak','steak', 'dinner', 12.50, TO_DATE('11/19/14','MM/DD/YY'));
INSERT INTO Meal VALUES (1, 'Chicken Caesar Salad', 'salad', 'dinner', 9.00, TO_DATE('11/19/14','MM/DD/YY'));
INSERT INTO Meal VALUES (2, 'Chicken Caesar Salad','salad', 'lunch', 7.00, TO_DATE('11/19/14','MM/DD/YY'));
--
--IsInMeal ( [inID, mealID], units )
CREATE TABLE IsInMeal
(
	inID INTEGER NOT NULL,
	mealID INTEGER NOT NULL,
	units FLOAT NOT NULL,
	--
	--Primary Key
	CONSTRAINT IsInMealIC1 PRIMARY KEY (inID,mealID),
	--Foreign Key (Ingredient ID)
	CONSTRAINT IsInMealIC2 FOREIGN KEY (inID) REFERENCES Ingredient(id) ON DELETE CASCADE,
	--Foreign Key (Meal ID)
	CONSTRAINT IsInMealIC3 FOREIGN KEY (mealID) REFERENCES Meal(id) ON DELETE CASCADE	
);
--
--Populate IsInMeal Table
INSERT INTO IsInMeal VALUES (0, 0, 1);
INSERT INTO IsInMeal VALUES (2, 0, 4);
INSERT INTO IsInMeal VALUES (3, 1, 2);
INSERT INTO IsInMeal VALUES (4, 1, 9);
INSERT INTO IsInMeal VALUES (5, 1, 3);
INSERT INTO IsInMeal VALUES (3, 2, 1);
INSERT INTO IsInMeal VALUES (4, 2, 6);
INSERT INTO IsInMeal VALUES (5, 2, 2);