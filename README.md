restaurantDB
============

CIS 353 group project

Relational Schema

Ingredient (iID*, iName, iSize, cost, calories, isVeg, shelfLife, isGF, qty ) <== not BCNF/changed to ID key
Ingredient (iID*, iName, iSize, cost, calories, qty)
veg(iName*, isVeg)
gf(iName*, isGF)
shelfLife(iName*, shelfLife)

Meal ( mID*, name, timeOfDay, ldo, price ) 

Chef ( cSsn*, name, traineeSsn )

SeasonalMenu ( seID*, name )

SpecialsMenu ( cSSN*, spID*, name )

Season ( iName*, iSize*, season )<==changed ingredient key
Season (iID*, season)

Daysofweek ( cSsn*, day* )

isInMeal ( iName, iSize, mID )<==changed ingredient key
isInMeal (iID*, mID*)

MadeBy ( cSsn*, mID*, prepTime )

isOnSeMenu( mID*, seID* )

isOnSpecMenu( mID*, cSsn*, spID* )

Substitutes ( iName1, iSize1, iName2, iSize2 )<==changed ingredient key
Substitutes (iID1, iID2)
