domains
	name, phone = symbol.
	city, street = symbol.
	house, apartment = integer.
	address = address_s(city, street, house, apartment).
	brand, color, plate = symbol.
	price = integer.
predicates
	phonebook(name, phone, address)
	car(name, brand, color, price, plate)
	get_info(Brand, Color, Name, City, Phone)
clauses
	phonebook("Manh", "111", address_s("Moscow", "Gagarina", 1, 1)).
	car("Manh", "Ford", "Green", 123, "111-22222").
	get_info(Brand, Color, Name, City, Phone) :- 
		phonebook(Name, Phone, address_s(City, _, _, _)), car(Name, Brand, Color, _, _).
goal
	get_info("Ford", "Green", Name, City, Phone).