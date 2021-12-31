// haxe --main Program --interp
class Program {
	public static function main() {
		for (i in 0...1) {
			trace(getRandomWeek());
		}
	}

	private static function getRandomWeek():String {
         var meals:List<String> = new List<String>();

        return
			"Pondělí: " + getRandomMealNoRepeat(meals) + "\n" +
			"Úterý: " + getRandomMealNoRepeat(meals) + "\n" +
			"Středa: " + getRandomMealNoRepeat(meals) + "\n" +
			"Čtvrtek: " + getRandomMealNoRepeat(meals) + "\n" +
			"Pátek: " + getRandomMealNoRepeat(meals) + "\n";
    }

    private static function getRandomMealNoRepeat(meals:List<String>): String{
        var rndMeal:String = getRandomMeal();

        if (meals.length > 0){
            while (meals.last() == rndMeal){
                rndMeal = getRandomMeal();
            }
        }

        meals.add(rndMeal);
        return rndMeal;
    }

    private static function getRandomMeal(): String{
        var rndNum:Int = Std.random(91);

            if (rndNum < 20) 
                return "Pizzařství";
            else if (rndNum < 40)
                return "Šášaburger";
            else if (rndNum < 60)
                return "Kebab";
            else if (rndNum < 70)
                return "KFC";
            else if (rndNum < 80)
                return "Čína";
            else 
                return "Krámek";
    }
}
