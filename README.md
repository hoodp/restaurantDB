restaurantDB
============

CIS 353 group project


Overview
This database will be used by a restaurant in their computer system used by the servers to send orders to the kitchen. At the beginning of the day, the manager will choose a seasonal menu and one of that day’s chefs’ specials menus. The meals on those menus will then be available in the computer to place orders. A new meal is created in the system by selecting ingredients and entering portion sizes. The system must know which ingredients and portion sizes are in each meal to track inventory and determine certain characteristics customers will want to know about, such as total calories or if the meal is vegetarian or gluten free. The system will also be capable of providing an estimate to the server of how long a meal will take based on which chef will be preparing it. 

Entities
Meal 
Each meal the restaurant makes is named and is identified by a unique Id number. It is given a price that must be greater than the sum of the costs of the ingredients it is composed of. The last date it was ordered and the time of day it should be served (breakfast, lunch, dinner) is also kept track of. A meal is determined to be gluten free or vegetarian by its ingredients. Total calories are also determined by its ingredients. A meal can be on a multiple number of a chef’s specials menus and a multiple number of seasonal menus as long as all its ingredients are in season in that season. Each meal can be made by multiple chefs, each requiring a different length of preparation time. Lunch and breakfast meals shouldn’t take longer than 15 minutes to prepare, and dinner meals shouldn’t take longer than 25 minutes to prepare. 

Ingredient
The name and portion size of the ingredient determine its uniqueness. An ingredient can be categorized as vegetarian, and whether or not it’s gluten free. Ingredients can be used in multiple different seasons. They also consist of the total number of calories, days before their expiration, cost, and the quantity in stock. Many different ingredients can be in several different meals, and many different ingredients can be substituted by other ingredients. If an ingredient is substituted, the portion size must be equal to the portion size it’s replacing. 

Chef
Each chef who works at the restaurant is named by their full name, and each is also identified by their social security number.  A chef can work multiple days throughout the week.  Each chef may train a single other chef, and each chef may be trained by a single other chef.  A chef who is not a trainee may create many specials menus, but a specials menu may not be created by several chefs.  Not every chef makes every kind of meal, but every meal must be made by a chef working that day.  The amount of time needed to make a meal is not always the same for each chef.

Seasonal Menu
A seasonal menu is named and given a unique ID number. The season it is for is derived by the meals that are included in it. All the ingredients in all the meals that are on each seasonal menu must be in season the same season. There is no limit to the number of meals on each seasonal menu, and a meal can be on many seasonal menus. 

Specials Menu
Each chef who is not a trainee will create a specials menu identified by a unique number and given a name. At most, five meals may be on a specials menu, and a meal can be on more than one specials menu. Meals on specials menus should not be on a seasonal menu. A specials menu may be used throughout multiple seasons as long as all the ingredients used in all its meals are in season during those seasons. 

Relational Schema

Ingredient ( iName, iSize, cost, calories, isVeg, shelfLife, isGF, qty )

Meal ( mID, name, timeOfDay, ldo, price ) 

Chef ( cSsn, name, traineeSsn )

SeasonalMenu ( seID, name )

SpecialsMenu ( cSSN, spID, name )

Season ( iName, iSize, season )

Daysofweek ( cSsn, day )

isInMeal ( iName, iSize, mID )

MadeBy ( cSsn, mID, prepTime )

isOnSeMenu( mID, seID )

isOnSpecMenu( mID, cSsn, spID )

Substitutes ( iName1, iSize1, iName2, iSize2 )
