function getRandomWeek()
    local meals = {}
    
      return "Pondělí: " .. getRandomMealNoRepeat(meals) .. "\n" .. 
        "Úterý: " .. getRandomMealNoRepeat(meals) .. "\n" ..
        "Středa: " .. getRandomMealNoRepeat(meals) .. "\n" ..
        "Čtvrtek: " .. getRandomMealNoRepeat(meals) .. "\n" ..
        "Pátek: " .. getRandomMealNoRepeat(meals) .. "\n"

end

function getRandomMealNoRepeat(meals)
    local rndMeal = getRandomMeal()
    
    if #meals > 0 then
        while meals[#meals] == rndMeal do
            rndMeal = getRandomMeal()
        end
    end
    table.insert(meals, rndMeal)
    return rndMeal
end

function getRandomMeal()
    local rndNum = math.random(0, 91)
    if rndNum < 20 then
        return "Pizzařství"

    elseif rndNum < 40 then
        return "Šášaburger"
    
    elseif rndNum < 60 then
        return "Kebab"
    
    elseif rndNum < 70 then
        return "KFC"
    
    elseif rndNum < 80 then
        return "Čína"
    else
        return "Krámek"    
    end
end


-- Consider this as Main function :)
for i = 1, 1, 1 do
    print(getRandomWeek())
end