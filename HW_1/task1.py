#!/usr/bin/env python3

class Human:
    default_name = "Aaron"
    default_age = 40

    def __init__(self, name=default_name, age=default_age):
        self.name = name
        self.age = age

        self.__money = 0
        self.__house = None

    def info(self):
        return self.name, self.age, self.__money, self.__house

    @staticmethod
    def default_info():
        return Human.default_name, Human.default_age

    def __make_deal(self, house, price):
        self.__money -= price
        self.__house = house
    
    def earn_money(self):
        self.__money += 10

    def buy_house(self, house, discount):
        if house.final_price(discount) > self.__money:
            print("Insufficient money")
        else:
            self.__make_deal(house, house.final_price(discount))


class House:
    def __init__(self, area, price):
        self._area = area
        self._price = price

    def final_price(self, discount):
        return self._price*(1 - discount/100)

class SmallHouse(House):
    def __init__(self, price):
        super().__init__(40, price)


print(Human.default_info())

A = Human("Jack", 20)
print(A.info())

sh = SmallHouse(5)
A.buy_house(sh, 0)

A.earn_money()
A.buy_house(sh, 10)

print(A.info())
