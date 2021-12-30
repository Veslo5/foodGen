#include <iostream>
#include <stdio.h>
#include <vector>
#include <random>
#include <Windows.h>

std::string getRandomMeal() {
	std::random_device dev;
	std::mt19937 rng(dev());
	std::uniform_int_distribution<std::mt19937::result_type> dist6(0, 91);
	unsigned int rndNum = dist6(rng);

	if (rndNum < 20)
	{
		return u8"Pizzaøství";
	}
	else if (rndNum < 40)
	{
		return u8"Šášaburger";
	}
	else if (rndNum < 60)
	{
		return u8"Kebab";
	}
	else if (rndNum < 70)
	{
		return u8"KFC";
	}
	else if (rndNum < 80)
	{
		return u8"Èína";
	}
	else
	{
		return u8"Krámek";
	}

}

std::string getRandomMealNoRepeat(std::vector<std::string>* meals) {
	std::string rndMeal = getRandomMeal();

	if (meals->size() > 0)
	{
		while (meals->back() == rndMeal)
		{
			rndMeal = getRandomMeal();
		}
	}

	meals->push_back(rndMeal);
	return rndMeal;

}

std::string getRandomWeek() {
	std::vector<std::string> meals;

	return
		u8"Pondìlí: " + getRandomMealNoRepeat(&meals) + "\n" +
		u8"Úterý: " + getRandomMealNoRepeat(&meals) + "\n" +
		u8"Støeda: " + getRandomMealNoRepeat(&meals) + "\n" +
		u8"Ètvrtek: " + getRandomMealNoRepeat(&meals) + "\n" +
		u8"Pátek: " + getRandomMealNoRepeat(&meals) + "\n";

}

int main()
{
	SetConsoleOutputCP(CP_UTF8); //UTF8 to widnows console

	for (unsigned int i = 0; i < 1; i++)
	{
		std::cout << getRandomWeek() << std::endl;
	}

	return 0;
}

