using System;
using System.Collections.Generic;
using System.Linq;

public class Program
{
	static Random rnd = new Random();


	public static void Main()
	{
		for (int i = 0; i < 1; i++)
		{
			Console.WriteLine(getRandomWeek());
		}
	}


	static string getRandomWeek()
	{
		List<string> meals = new List<string>();

		return
			"Pondělí: " + getRandomMealNoRepeat(ref meals) + Environment.NewLine +
			"Úterý: " + getRandomMealNoRepeat(ref meals) + Environment.NewLine +
			"Středa: " + getRandomMealNoRepeat(ref meals) + Environment.NewLine +
			"Čtvrtek: " + getRandomMealNoRepeat(ref meals) + Environment.NewLine +
			"Pátek: " + getRandomMealNoRepeat(ref meals) + Environment.NewLine;
	}


	static string getRandomMealNoRepeat(ref List<string> meals)
	{
		string rndMeal = getRandomMeal();

		if (meals.Count > 0)
		{
			while (meals.LastOrDefault() == rndMeal)
			{
				rndMeal = getRandomMeal();
			}
		}

		meals.Add(rndMeal);
		return rndMeal;
	}


	static string getRandomMeal()
	{
		int rndNum = rnd.Next(0, 91);

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
}