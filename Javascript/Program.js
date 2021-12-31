function getRandomWeek() {        
    
    let meals = []
    
    return "Pondělí: " + getRandomMealNoRepeat(meals) + "\n" +
    "Úterý: " + getRandomMealNoRepeat(meals) + "\n" +
    "Středa: " + getRandomMealNoRepeat(meals) + "\n" +
    "Čtvrtek: " + getRandomMealNoRepeat(meals) + "\n" +
    "Pátek: " + getRandomMealNoRepeat(meals) + "\n"
}

function getRandomMealNoRepeat(meals) {
    let rndMeal = getRandomMeal()    
    if (meals.length > 0) 
    {
        while (meals[meals.length - 1] === rndMeal) {
            rndMeal = getRandomMeal()
        }
    }

    meals.push(rndMeal)
    return rndMeal
}

function getRandomMeal() {
    let rndNum = Math.floor(Math.random() * 91)
    if (rndNum < 20)
    {
        return "Pizzařství";
    }
    else if (rndNum < 40)
    {
        return "Šášaburger";
    }
    else if (rndNum < 60)
    {
        return "Kebab";
    }
    else if (rndNum < 70)
    {
        return "KFC";
    }
    else if (rndNum < 80)
    {
        return "Čína";
    }
    else
    {
        return "Krámek";
    }
}

// consider this as main :)
for (let index = 0; index < 10; index++) {
    console.log(getRandomWeek())        
}