restaurantDB
============

CIS 353 group project

Relational Schema

Ingredient ( [id], name, isVeg, isGF, shelfLife, unit, costPerUnit, calsPerUnit, unitsOnHand )

Sub ( [inID1, inID2] )

Meal ( [id], name, category, timeOfDay, price, ldo )

Season ( [mealID, season] )

MadeBy ( [cID, mealID], prepTime )

IsInMeal ( [inID, mealID], units )

Menu ( [id], name )

IsOnMenu ( [mealID, menuID] )

Chef ( [id], name, trainee )

DaysOfWeek( [cID, day] )

SpecialsMenu ( [cID, id], name )

IsOnSpecialsMenu ( [mealID, spMenuID] )
