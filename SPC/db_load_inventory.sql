CREATE TABLE [Inventory] ( 
	[SKU] INTEGER  NOT NULL PRIMARY KEY, 
	[Name] NVARCHAR(50)  NOT NULL,
	[Quantity] INTEGER  NOT NULL,
	[ImagePath] NVARCHAR(50) NOT NULL,
	[Threshold] INTEGER  NOT NULL
); 

INSERT INTO Inventory VALUES(1, 'Bacon, Gouda & Egg Sandwich', 100, 'Hot Breakfast/Breakfast Sandwiches & Wraps/Bacon, Gouda & Egg Sandwich.png', 5);
INSERT INTO Inventory VALUES(2, 'Double-Smoked Bacon, Cheddar & Egg Sandwich', 100, 'Hot Breakfast/Breakfast Sandwiches & Wraps/Double-Smoked Bacon, Cheddar & Egg Sandwich.png', 5);
INSERT INTO INVENTORY VALUES(3, 'Impossible™ Breakfast Sandwich', 100, "Hot Breakfast/Breakfast Sandwiches & Wraps/Impossible™ Breakfast Sandwich.png", 5);
INSERT INTO INVENTORY VALUES(4, 'Turkey Bacon, Cheddar & Egg White Sandwich', 100, "Hot Breakfast/Breakfast Sandwiches & Wraps/Turkey Bacon, Cheddar & Egg White Sandwich.png", 5);
INSERT INTO INVENTORY VALUES(5, 'Spinach, Feta & Egg White Wrap', 100, "Hot Breakfast/Breakfast Sandwiches & Wraps/Spinach, Feta & Egg White Wrap.png", 5);
INSERT INTO INVENTORY VALUES(6, 'Kale & Mushroom Egg Bites', 100, "Hot Breakfast/Sous Vide Egg Bites/Kale & Mushroom Egg Bites.png", 5);
INSERT INTO INVENTORY VALUES(7, 'Bacon & Gruyère Egg Bites', 100, "Hot Breakfast/Sous Vide Egg Bites/Bacon & Gruyère Egg Bites.png", 5);
INSERT INTO INVENTORY VALUES(8, 'Egg White & Roasted Red Pepper Egg Bites', 100, "Hot Breakfast/Sous Vide Egg Bites/Egg White & Roasted Red Pepper Egg Bites.png", 5);
INSERT INTO INVENTORY VALUES(9, 'Crispy Grilled Cheese on Sourdough', 100, "Lunch/Warm Sandwiches/Crispy Grilled Cheese on Sourdough.png", 5);
INSERT INTO INVENTORY VALUES(10, 'Ham & Swiss on Baguette', 100, "Lunch/Warm Sandwiches/Ham & Swiss on Baguette.png", 5);
INSERT INTO INVENTORY VALUES(11, 'Turkey, Provolone & Pesto on Ciabatta', 100, "Lunch/Warm Sandwiches/Turkey, Provolone & Pesto on Ciabatta.png", 5);
INSERT INTO INVENTORY VALUES(12, 'Chicken Caprese on Ciabatta', 100, "Lunch/Warm Sandwiches/Chicken Caprese on Ciabatta.png", 5);
INSERT INTO INVENTORY VALUES(13, 'Chicken & Bacon on Brioche', 100, "Lunch/Warm Sandwiches/Chicken & Bacon on Brioche.png", 5);
INSERT INTO INVENTORY VALUES(14, 'Tomato & Mozzarella on Focaccia', 100, "Lunch/Warm Sandwiches/Tomato & Mozzarella on Focaccia.png", 5);
INSERT INTO INVENTORY VALUES(15, 'Chickpea Bites & Avocado Protein Box', 100, "Lunch/Protein Boxes/Chickpea Bites & Avocado Protein Box.png", 5);
INSERT INTO INVENTORY VALUES(16, 'Chicken & Hummus Protein Box', 100, "Lunch/Protein Boxes/Chicken & Hummus Protein Box.png", 5);
INSERT INTO INVENTORY VALUES(17, 'Eggs & Cheddar Protein Box', 100, "Lunch/Protein Boxes/Eggs & Cheddar Protein Box.png", 5);
INSERT INTO INVENTORY VALUES(18, 'PB&J Protein Box', 100, "Lunch/Protein Boxes/PB&J Protein Box.png", 5);
INSERT INTO INVENTORY VALUES(19, 'Cheese & Fruit Protein Box', 100, "Lunch/Protein Boxes/Cheese & Fruit Protein Box.png", 5);
INSERT INTO INVENTORY VALUES(20, 'Plain Bagel', 100, "Bakery/Bagles/Plain Bagel.png", 5);
INSERT INTO INVENTORY VALUES(21, 'Avocado Spread', 100, "Bakery/Bagles/Avocado Spread.png", 5);
INSERT INTO INVENTORY VALUES(22, 'Earth Cake Pop', 100, "Bakery/Cake Pops/Earth Cake Pop.png", 5);
INSERT INTO INVENTORY VALUES(23, 'Birthday Cake Pop', 100, "Bakery/Cake Pops/Birthday Cake Pop.png", 5);
INSERT INTO INVENTORY VALUES(24, 'Chocolate Cake Pop', 100, "Bakery/Cake Pops/Chocolate Cake Pop.png", 5);
INSERT INTO INVENTORY VALUES(25, 'Double Chocolate Brownie', 100, "Bakery/Cookies, Brownies & Bars/Double Chocolate Brownie.png", 5);
INSERT INTO INVENTORY VALUES(26, 'Chocolate Chip Cookie', 100, "Bakery/Cookies, Brownies & Bars/Chocolate Chip Cookie.png", 5);
INSERT INTO INVENTORY VALUES(27, 'Marshmallow Dream Bar', 100, "Bakery/Cookies, Brownies & Bars/Marshmallow Dream Bar.png", 5);
INSERT INTO INVENTORY VALUES(28, 'Ham & Swiss Croissant', 100, "Bakery/Croissants/Ham & Swiss Croissant.png", 5);
INSERT INTO INVENTORY VALUES(29, 'Butter Croissant', 100, "Bakery/Croissants/Butter Croissant.png", 5);
INSERT INTO INVENTORY VALUES(30, 'Almond Croissant', 100, "Bakery/Croissants/Almond Croissant.png", 5);
INSERT INTO INVENTORY VALUES(31, 'Chocolate Croissant', 100, "Bakery/Croissants/Chocolate Croissant.png", 5);
INSERT INTO INVENTORY VALUES(32, 'Red Velvet Loaf', 100, "Bakery/Loaves & Cakes/Red Velvet Loaf.png", 5);
INSERT INTO INVENTORY VALUES(33, 'Cinnamon Coffee Cake', 100, "Bakery/Loaves & Cakes/Cinnamon Coffee Cake.png", 5);
INSERT INTO INVENTORY VALUES(34, 'Iced Lemon Loaf', 100, "Bakery/Loaves & Cakes/Iced Lemon Loaf.png", 5);
INSERT INTO INVENTORY VALUES(35, 'Pumpkin & Pepita Loaf', 100, "Bakery/Loaves & Cakes/Pumpkin & Pepita Loaf.png", 5);
INSERT INTO INVENTORY VALUES(36, 'Banana Walnut & Pecan Loaf', 100, "Bakery/Loaves & Cakes/Banana Walnut & Pecan Loaf.png", 5);
INSERT INTO INVENTORY VALUES(37, 'Cheese Danish', 100, "Bakery/Danishes & Doughnuts/Cheese Danish.png", 5);
INSERT INTO INVENTORY VALUES(38, 'Glazed Doughnut', 100, "Bakery/Danishes & Doughnuts/Glazed Doughnut.png", 5);
INSERT INTO INVENTORY VALUES(39, 'Blueberry Scone', 100, "Bakery/Muffins & Scones/Blueberry Scone.png", 5);
INSERT INTO INVENTORY VALUES(40, 'Petite Vanilla Bean Scone', 100, "Bakery/Muffins & Scones/Petite Vanilla Bean Scone.png", 5);
INSERT INTO INVENTORY VALUES(41, 'Blueberry Muffin', 100, "Bakery/Muffins & Scones/Blueberry Muffin.png", 5);