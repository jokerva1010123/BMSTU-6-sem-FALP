domains
	lastname, phone, city, street = string.
	house, flat = integer.
	address = addr(city, street, house, flat).
	brand, color = string.
	price = integer.
	number = string.
predicates
	phone(lastname, phone, address).
	car(lastname, brand, color, price, number).
	byCarInfo(brand, color, lastname, city, phone).
clauses
	phone("Alex", "+7-958-205-94-37", addr("Moscow", "Lenina", 3, 51)).
	phone("Alex", "+7-945-818-96-85", addr("Moscow", "Lenina", 3, 51)).
	phone("Saber", "+7-905-157-89-39", addr("Moscow", "Tsentralnaya", 4, 52)).
	phone("Kaguya", "+7-973-972-98-44", addr("Saint", "Lenina", 5, 53)).
	phone("Kulosis", "+7-987-655-12-56", addr("Saint", "Polevaya", 6, 54)).
	phone("Kulosis", "+7-933-693-95-80", addr("Saint", "Polevaya", 6, 54)).
	phone("Shenhe", "+7-958-283-29-80", addr("Saint", "Izmailov", 7, 41)).
	phone("Burova", "+7-954-284-48-79", addr("Anapa", "Pionerskaya", 8, 42)).
	phone("Alex", "+7-939-843-83-97", addr("Anapa", "Moskovskaya", 1, 43)).

	car("Alex", "Mazda", "blue", 25000, "A123").
	car("Saber", "BMW", "black", 30000, "B234").
	car("Saber", "GAZ", "red", 10000, "A102").
	car("Kaguya", "Ferrari", "yellow", 140000, "C567").
	car("Kulosis", "Toyota", "grey", 20000, "D123").
	car("Shenhe", "BMW", "black", 15000, "F901").
	car("Alex", "Mini", "white", 30000, "F103").

	byCarInfo(Brand, Color, Lastname, City, Phone) :-
	car(Lastname, Brand, Color, _, _),
	phone(Lastname, Phone, addr(City, _, _, _)).

goal
	byCarInfo("Mini", "white", Lastname, City, Phone).
	