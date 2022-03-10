CREATE TABLE [Inventory] ( 
	[SKU] INTEGER  NOT NULL PRIMARY KEY, 
	[Name] NVARCHAR(50)  NOT NULL,
	[Quantity] INTEGER  NOT NULL,
	[ImagePath] NVARCHAR(50) NOT NULL,
	[Threshold] INTEGER  NOT NULL
); 

/*
CREATE TABLE [Orders] ( 
	[OrderID] INTEGER  NOT NULL PRIMARY KEY, 
	[VendorID] INTEGER  NOT NULL,
  	[SKU] INTEGER  NOT NULL,
	[Quantity] INTEGER  NOT NULL
  FOREIGN KEY (SKU) REFERENCES Inventory
); 
CREATE TABLE [Transactions] ( 
	[UserID] INTEGER  NOT NULL PRIMARY KEY, 
	[SKU] INTEGER  NOT NULL,
	[Quantity] INTEGER  NOT NULL,
	[Order_type] NVARCHAR(50) NOT NULL,
	[Date] NVARCHAR(50)  NOT NULL
	FOREIGN KEY (SKU) REFERENCES Inventory
); 

INSERT INTO Transactions VALUES(1, 2 , 3 , 'POS', '03-09-22');

INSERT INTO Orders VALUES(1, 65, 10, 50);
*/

INSERT INTO INVENTORY VALUES(1, 'Bacon, Gouda & Egg Sandwich', 100, 'http://127.0.0.1:5000/image?path=Hot%20Breakfast/Breakfast%20Sandwiches%20&%20Wraps/Bacon,%20Gouda%20&%20Egg%20Sandwich.png', 5);
INSERT INTO INVENTORY VALUES(2, 'Double-Smoked Bacon, Cheddar & Egg Sandwich', 100, 'http://127.0.0.1:5000/image?path=Hot%20Breakfast/Breakfast%20Sandwiches%20&%20Wraps/Double-Smoked%20Bacon,%20Cheddar%20&%20Egg%20Sandwich.png', 5);
INSERT INTO INVENTORY VALUES(3, 'Impossible™ Breakfast Sandwich', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Breakfast%20Sandwiches%20&%20Wraps/Impossible™%20Breakfast%20Sandwich.png", 5);
INSERT INTO INVENTORY VALUES(4, 'Turkey Bacon, Cheddar & Egg White Sandwich', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Breakfast%20Sandwiches%20&%20Wraps/Turkey%20Bacon,%20Cheddar%20&%20Egg%20White%20Sandwich.png", 5);
INSERT INTO INVENTORY VALUES(5, 'Spinach, Feta & Egg White Wrap', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Breakfast%20Sandwiches%20&%20Wraps/Spinach,%20Feta%20&%20Egg%20White%20Wrap.png", 5);
INSERT INTO INVENTORY VALUES(6, 'Kale & Mushroom Egg Bites', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Sous%20Vide%20Egg%20Bites/Kale%20&%20Mushroom%20Egg%20Bites.png", 5);
INSERT INTO INVENTORY VALUES(7, 'Bacon & Gruyère Egg Bites', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Sous%20Vide%20Egg%20Bites/Bacon%20&%20Gruyère%20Egg%20Bites.png", 5);
INSERT INTO INVENTORY VALUES(8, 'Egg White & Roasted Red Pepper Egg Bites', 100, "http://127.0.0.1:5000/image?path=Hot%20Breakfast/Sous%20Vide%20Egg%20Bites/Egg%20White%20&%20Roasted%20Red%20Pepper%20Egg%20Bites.png", 5);
INSERT INTO INVENTORY VALUES(9, 'Crispy Grilled Cheese on Sourdough', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Crispy%20Grilled%20Cheese%20on%20Sourdough.png", 5);
INSERT INTO INVENTORY VALUES(10, 'Ham & Swiss on Baguette', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Ham%20&%20Swiss%20on%20Baguette.png", 5);
INSERT INTO INVENTORY VALUES(11, 'Turkey, Provolone & Pesto on Ciabatta', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Turkey,%20Provolone%20&%20Pesto%20on%20Ciabatta.png", 5);
INSERT INTO INVENTORY VALUES(12, 'Chicken Caprese on Ciabatta', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Chicken%20Caprese%20on%20Ciabatta.png", 5);
INSERT INTO INVENTORY VALUES(13, 'Chicken & Bacon on Brioche', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Chicken%20&%20Bacon%20on%20Brioche.png", 5);
INSERT INTO INVENTORY VALUES(14, 'Tomato & Mozzarella on Focaccia', 100, "http://127.0.0.1:5000/image?path=Lunch/Warm%20Sandwiches/Tomato%20&%20Mozzarella%20on%20Focaccia.png", 5);
INSERT INTO INVENTORY VALUES(15, 'Chickpea Bites & Avocado Protein Box', 100, "http://127.0.0.1:5000/image?path=Lunch/Protein%20Boxes/Chickpea%20Bites%20&%20Avocado%20Protein%20Box.png", 5);
INSERT INTO INVENTORY VALUES(16, 'Chicken & Hummus Protein Box', 100, "http://127.0.0.1:5000/image?path=Lunch/Protein%20Boxes/Chicken%20&%20Hummus%20Protein%20Box.png", 5);
INSERT INTO INVENTORY VALUES(17, 'Eggs & Cheddar Protein Box', 100, "http://127.0.0.1:5000/image?path=Lunch/Protein%20Boxes/Eggs%20&%20Cheddar%20Protein%20Box.png", 5);
INSERT INTO INVENTORY VALUES(18, 'PB&J Protein Box', 100, "http://127.0.0.1:5000/image?path=Lunch/Protein%20Boxes/PB&J%20Protein%20Box.png", 5);
INSERT INTO INVENTORY VALUES(19, 'Cheese & Fruit Protein Box', 100, "http://127.0.0.1:5000/image?path=Lunch/Protein%20Boxes/Cheese%20&%20Fruit%20Protein%20Box.png", 5);
INSERT INTO INVENTORY VALUES(20, 'Plain Bagel', 100, "http://127.0.0.1:5000/image?path=Bakery/Bagles/Plain%20Bagel.png", 5);
INSERT INTO INVENTORY VALUES(21, 'Avocado Spread', 100, "http://127.0.0.1:5000/image?path=Bakery/Bagles/Avocado%20Spread.png", 5);
INSERT INTO INVENTORY VALUES(22, 'Earth Cake Pop', 100, "http://127.0.0.1:5000/image?path=Bakery/Cake%20Pops/Earth%20Cake%20Pop.png", 5);
INSERT INTO INVENTORY VALUES(23, 'Birthday Cake Pop', 100, "http://127.0.0.1:5000/image?path=Bakery/Cake%20Pops/Birthday%20Cake%20Pop.png", 5);
INSERT INTO INVENTORY VALUES(24, 'Chocolate Cake Pop', 100, "http://127.0.0.1:5000/image?path=Bakery/Cake%20Pops/Chocolate%20Cake%20Pop.png", 5);
INSERT INTO INVENTORY VALUES(25, 'Double Chocolate Brownie', 100, "http://127.0.0.1:5000/image?path=Bakery/Cookies,%20Brownies%20&%20Bars/Double%20Chocolate%20Brownie.png", 5);
INSERT INTO INVENTORY VALUES(26, 'Chocolate Chip Cookie', 100, "http://127.0.0.1:5000/image?path=Bakery/Cookies,%20Brownies%20&%20Bars/Chocolate%20Chip%20Cookie.png", 5);
INSERT INTO INVENTORY VALUES(27, 'Marshmallow Dream Bar', 100, "http://127.0.0.1:5000/image?path=Bakery/Cookies,%20Brownies%20&%20Bars/Marshmallow%20Dream%20Bar.png", 5);
INSERT INTO INVENTORY VALUES(28, 'Ham & Swiss Croissant', 100, "http://127.0.0.1:5000/image?path=Bakery/Croissants/Ham%20&%20Swiss%20Croissant.png", 5);
INSERT INTO INVENTORY VALUES(29, 'Butter Croissant', 100, "http://127.0.0.1:5000/image?path=Bakery/Croissants/Butter%20Croissant.png", 5);
INSERT INTO INVENTORY VALUES(30, 'Almond Croissant', 100, "http://127.0.0.1:5000/image?path=Bakery/Croissants/Almond%20Croissant.png", 5);
INSERT INTO INVENTORY VALUES(31, 'Chocolate Croissant', 100, "http://127.0.0.1:5000/image?path=Bakery/Croissants/Chocolate%20Croissant.png", 5);
INSERT INTO INVENTORY VALUES(32, 'Red Velvet Loaf', 100, "http://127.0.0.1:5000/image?path=Bakery/Loaves%20&%20Cakes/Red%20Velvet%20Loaf.png", 5);
INSERT INTO INVENTORY VALUES(33, 'Cinnamon Coffee Cake', 100, "http://127.0.0.1:5000/image?path=Bakery/Loaves%20&%20Cakes/Cinnamon%20Coffee%20Cake.png", 5);
INSERT INTO INVENTORY VALUES(34, 'Iced Lemon Loaf', 100, "http://127.0.0.1:5000/image?path=Bakery/Loaves%20&%20Cakes/Iced%20Lemon%20Loaf.png", 5);
INSERT INTO INVENTORY VALUES(35, 'Pumpkin & Pepita Loaf', 100, "http://127.0.0.1:5000/image?path=Bakery/Loaves%20&%20Cakes/Pumpkin%20&%20Pepita%20Loaf.png", 5);
INSERT INTO INVENTORY VALUES(36, 'Banana Walnut & Pecan Loaf', 100, "http://127.0.0.1:5000/image?path=Bakery/Loaves%20&%20Cakes/Banana%20Walnut%20&%20Pecan%20Loaf.png", 5);
INSERT INTO INVENTORY VALUES(37, 'Cheese Danish', 100, "http://127.0.0.1:5000/image?path=Bakery/Danishes%20&%20Doughnuts/Cheese%20Danish.png", 5);
INSERT INTO INVENTORY VALUES(38, 'Glazed Doughnut', 100, "http://127.0.0.1:5000/image?path=Bakery/Danishes%20&%20Doughnuts/Glazed%20Doughnut.png", 5);
INSERT INTO INVENTORY VALUES(39, 'Blueberry Scone', 100, "http://127.0.0.1:5000/image?path=Bakery/Muffins%20&%20Scones/Blueberry%20Scone.png", 5);
INSERT INTO INVENTORY VALUES(40, 'Petite Vanilla Bean Scone', 100, "http://127.0.0.1:5000/image?path=Bakery/Muffins%20&%20Scones/Petite%20Vanilla%20Bean%20Scone.png", 5);
INSERT INTO INVENTORY VALUES(41, 'Blueberry Muffin', 100, "http://127.0.0.1:5000/image?path=Bakery/Muffins%20&%20Scones/Blueberry%20Muffin.png", 5);