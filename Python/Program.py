import random

def getRandomWeek():
    meals = []
    return "Pondělí: " + getRandomMealNoRepeat(meals) + "\n" + \
			"Úterý: " + getRandomMealNoRepeat(meals) + "\n" + \
			"Středa: " + getRandomMealNoRepeat(meals) + "\n" + \
			"Čtvrtek: " + getRandomMealNoRepeat(meals) + "\n" + \
			"Pátek: " + getRandomMealNoRepeat(meals) + "\n"

def getRandomMealNoRepeat(meals):
    rndMeal = getRandomMeal()
    if(len(meals) > 0):
        while (meals[-1] == rndMeal):
            rndMeal = getRandomMeal()
    meals.append(rndMeal)
    return rndMeal

def getRandomMeal():
    rndNum = random.randint(0,91)
    if(rndNum < 20):
        return "Pizzařství"
    elif (rndNum < 40):
        return "Šášaburger"
    elif (rndNum < 60):
        return "Kebab"
    elif (rndNum < 70):
        return "KFC"
    elif (rndNum < 80):
        return "Čína"
    else:
        return "Krámek"

for i in range(0, 1):
      print(str(getRandomWeek()))