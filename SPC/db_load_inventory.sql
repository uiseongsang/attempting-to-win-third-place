CREATE TABLE [Inventory] ( 
	[SKU] INTEGER  NOT NULL PRIMARY KEY, 
	[Name] NVARCHAR(50)  NOT NULL,
	[Quantity] INTEGER  NOT NULL,
	[ImagePath] NVARCHAR(50) NOT NULL,
	[Threshold] INTEGER  NOT NULL
); 

INSERT INTO Inventory VALUES(1, 'Bacon, Gouda & Egg Sandwich', 100, 'Hot Breakfast/Breakfast Sandwiches & Wraps/Bacon, Gouda & Egg Sandwich.png', 5);
INSERT INTO Inventory VALUES(2, 'Double-Smoked Bacon, Cheddar & Egg Sandwich', 100, 'Hot Breakfast/Breakfast Sandwiches & Wraps/Double-Smoked Bacon, Cheddar & Egg Sandwich.png', 5);