Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


--  SqlServer.2022

SELECT
	[t1].[IsDeleted],
	[t1].[ProductId],
	[t1].[ProductName],
	[t1].[SupplierId],
	[t1].[CategoryId],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	(VALUES
		(1,N'Chai',0,1,1,N'10 boxes x 20 bags',18.0000,39,0,10,0),
		(2,N'Chang',0,1,1,N'24 - 12 oz bottles',19.0000,17,40,25,0),
		(3,N'Aniseed Syrup',0,1,2,N'12 - 550 ml bottles',10.0000,13,70,25,0),
		(4,N'Chef Anton''s Cajun Seasoning',0,2,2,N'48 - 6 oz jars',22.0000,53,0,0,0),
		(5,N'Chef Anton''s Gumbo Mix',1,2,2,N'36 boxes',21.3500,0,0,0,1),
		(6,N'Grandma''s Boysenberry Spread',0,3,2,N'12 - 8 oz jars',25.0000,120,0,25,0),
		(7,N'Uncle Bob''s Organic Dried Pears',0,3,7,N'12 - 1 lb pkgs.',30.0000,15,0,10,0),
		(8,N'Northwoods Cranberry Sauce',0,3,2,N'12 - 12 oz jars',40.0000,6,0,0,0),
		(9,N'Mishi Kobe Niku',0,4,6,N'18 - 500 g pkgs.',97.0000,29,0,0,1),
		(10,N'Ikura',0,4,8,N'12 - 200 ml jars',31.0000,31,0,0,0),
		(11,N'Queso Cabrales',0,5,4,N'1 kg pkg.',21.0000,22,30,30,0),
		(12,N'Queso Manchego La Pastora',0,5,4,N'10 - 500 g pkgs.',38.0000,86,0,0,0),
		(13,N'Konbu',0,6,8,N'2 kg box',6.0000,24,0,5,0),
		(14,N'Tofu',0,6,7,N'40 - 100 g pkgs.',23.2500,35,0,0,0),
		(15,N'Genen Shouyu',0,6,2,N'24 - 250 ml bottles',15.5000,39,0,5,0),
		(16,N'Pavlova',0,7,3,N'32 - 500 g boxes',17.4500,29,0,10,0),
		(17,N'Alice Mutton',0,7,6,N'20 - 1 kg tins',39.0000,0,0,0,1),
		(18,N'Carnarvon Tigers',0,7,8,N'16 kg pkg.',62.5000,42,0,0,0),
		(19,N'Teatime Chocolate Biscuits',0,8,3,N'10 boxes x 12 pieces',9.2000,25,0,5,0),
		(20,N'Sir Rodney''s Marmalade',0,8,3,N'30 gift boxes',81.0000,40,0,0,0),
		(21,N'Sir Rodney''s Scones',0,8,3,N'24 pkgs. x 4 pieces',10.0000,3,40,5,0),
		(22,N'Gustaf''s Knäckebröd',0,9,5,N'24 - 500 g pkgs.',21.0000,104,0,25,0),
		(23,N'Tunnbröd',0,9,5,N'12 - 250 g pkgs.',9.0000,61,0,25,0),
		(24,N'Guaraná Fantástica',0,10,1,N'12 - 355 ml cans',4.5000,20,0,0,1),
		(25,N'NuNuCa Nuß-Nougat-Creme',0,11,3,N'20 - 450 g glasses',14.0000,76,0,30,0),
		(26,N'Gumbär Gummibärchen',0,11,3,N'100 - 250 g bags',31.2300,15,0,0,0),
		(27,N'Schoggi Schokolade',0,11,3,N'100 - 100 g pieces',43.9000,49,0,30,0),
		(28,N'Rössle Sauerkraut',0,12,7,N'25 - 825 g cans',45.6000,26,0,0,1),
		(29,N'Thüringer Rostbratwurst',0,12,6,N'50 bags x 30 sausgs.',123.7900,0,0,0,1),
		(30,N'Nord-Ost Matjeshering',0,13,8,N'10 - 200 g glasses',25.8900,10,0,15,0),
		(31,N'Gorgonzola Telino',0,14,4,N'12 - 100 g pkgs',12.5000,0,70,20,0),
		(32,N'Mascarpone Fabioli',0,14,4,N'24 - 200 g pkgs.',32.0000,9,40,25,0),
		(33,N'Geitost',0,15,4,N'500 g',2.5000,112,0,20,0),
		(34,N'Sasquatch Ale',0,16,1,N'24 - 12 oz bottles',14.0000,111,0,15,0),
		(35,N'Steeleye Stout',0,16,1,N'24 - 12 oz bottles',18.0000,20,0,15,0),
		(36,N'Inlagd Sill',0,17,8,N'24 - 250 g  jars',19.0000,112,0,20,0),
		(37,N'Gravad lax',0,17,8,N'12 - 500 g pkgs.',26.0000,11,50,25,0),
		(38,N'Côte de Blaye',0,18,1,N'12 - 75 cl bottles',263.5000,17,0,15,0),
		(39,N'Chartreuse verte',0,18,1,N'750 cc per bottle',18.0000,69,0,5,0),
		(40,N'Boston Crab Meat',0,19,8,N'24 - 4 oz tins',18.4000,123,0,30,0),
		(41,N'Jack''s New England Clam Chowder',0,19,8,N'12 - 12 oz cans',9.6500,85,0,10,0),
		(42,N'Singaporean Hokkien Fried Mee',0,20,5,N'32 - 1 kg pkgs.',14.0000,26,0,0,1),
		(43,N'Ipoh Coffee',0,20,1,N'16 - 500 g tins',46.0000,17,10,25,0),
		(44,N'Gula Malacca',0,20,2,N'20 - 2 kg bags',19.4500,27,0,15,0),
		(45,N'Rogede sild',0,21,8,N'1k pkg.',9.5000,5,70,15,0),
		(46,N'Spegesild',0,21,8,N'4 - 450 g glasses',12.0000,95,0,0,0),
		(47,N'Zaanse koeken',0,22,3,N'10 - 4 oz boxes',9.5000,36,0,0,0),
		(48,N'Chocolade',0,22,3,N'10 pkgs.',12.7500,15,70,25,0),
		(49,N'Maxilaku',0,23,3,N'24 - 50 g pkgs.',20.0000,10,60,15,0),
		(50,N'Valkoinen suklaa',0,23,3,N'12 - 100 g bars',16.2500,65,0,30,0),
		(51,N'Manjimup Dried Apples',0,24,7,N'50 - 300 g pkgs.',53.0000,20,0,10,0),
		(52,N'Filo Mix',0,24,5,N'16 - 2 kg boxes',7.0000,38,0,25,0),
		(53,N'Perth Pasties',0,24,6,N'48 pieces',32.8000,0,0,0,1),
		(54,N'Tourtière',0,25,6,N'16 pies',7.4500,21,0,10,0),
		(55,N'Pâté chinois',0,25,6,N'24 boxes x 2 pies',24.0000,115,0,20,0),
		(56,N'Gnocchi di nonna Alice',0,26,5,N'24 - 250 g pkgs.',38.0000,21,10,30,0),
		(57,N'Ravioli Angelo',0,26,5,N'24 - 250 g pkgs.',19.5000,36,0,20,0),
		(58,N'Escargots de Bourgogne',0,27,8,N'24 pieces',13.2500,62,0,20,0),
		(59,N'Raclette Courdavault',0,28,4,N'5 kg pkg.',55.0000,79,0,0,0),
		(60,N'Camembert Pierrot',0,28,4,N'15 - 300 g rounds',34.0000,19,0,0,0),
		(61,N'Sirop d''érable',0,29,2,N'24 - 500 ml bottles',28.5000,113,0,25,0),
		(62,N'Tarte au sucre',0,29,3,N'48 pies',49.3000,17,0,0,0),
		(63,N'Vegie-spread',0,7,2,N'15 - 625 g jars',43.9000,24,0,5,0),
		(64,N'Wimmers gute Semmelknödel',0,12,5,N'20 bags x 4 pieces',33.2500,22,80,30,0),
		(65,N'Louisiana Fiery Hot Pepper Sauce',0,2,2,N'32 - 8 oz bottles',21.0500,76,0,0,0),
		(66,N'Louisiana Hot Spiced Okra',0,2,2,N'24 - 8 oz jars',17.0000,4,100,20,0),
		(67,N'Laughing Lumberjack Lager',0,16,1,N'24 - 12 oz bottles',14.0000,52,0,10,0),
		(68,N'Scottish Longbreads',0,8,3,N'10 boxes x 8 pieces',12.5000,6,10,15,0),
		(69,N'Gudbrandsdalsost',0,15,4,N'10 kg pkg.',36.0000,26,0,15,0),
		(70,N'Outback Lager',0,7,1,N'24 - 355 ml bottles',15.0000,15,10,30,0),
		(71,N'Flotemysost',0,15,4,N'10 - 500 g pkgs.',21.5000,26,0,0,0),
		(72,N'Mozzarella di Giovanni',0,14,4,N'24 - 200 g pkgs.',34.8000,14,0,0,0),
		(73,N'Röd Kaviar',0,17,8,N'24 - 150 g jars',15.0000,101,0,5,0),
		(74,N'Longlife Tofu',0,4,7,N'5 kg pkg.',10.0000,4,20,5,0),
		(75,N'Rhönbräu Klosterbier',0,12,1,N'24 - 0.5 l bottles',7.7500,125,0,25,0),
		(76,N'Lakkalikööri',0,23,1,N'500 ml',18.0000,57,0,20,0),
		(77,N'Original Frankfurter grüne Soße',0,12,2,N'12 boxes',13.0000,32,0,15,0)
	) [t1]([ProductId], [ProductName], [IsDeleted], [SupplierId], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued])
		LEFT JOIN (VALUES
			(1,N'Chai'), (2,N'Chang'), (3,N'Aniseed Syrup'),
			(4,N'Chef Anton''s Cajun Seasoning'),
			(5,N'Chef Anton''s Gumbo Mix'), (6,N'Grandma''s Boysenberry Spread'),
			(7,N'Uncle Bob''s Organic Dried Pears'),
			(8,N'Northwoods Cranberry Sauce'), (9,N'Mishi Kobe Niku'),
			(10,N'Ikura'), (11,N'Queso Cabrales'), (12,N'Queso Manchego La Pastora'),
			(13,N'Konbu'), (14,N'Tofu'), (15,N'Genen Shouyu'),
			(16,N'Pavlova'), (17,N'Alice Mutton'), (18,N'Carnarvon Tigers'),
			(19,N'Teatime Chocolate Biscuits'),
			(20,N'Sir Rodney''s Marmalade'), (21,N'Sir Rodney''s Scones'),
			(22,N'Gustaf''s Knäckebröd'), (23,N'Tunnbröd'),
			(24,N'Guaraná Fantástica'), (25,N'NuNuCa Nuß-Nougat-Creme'),
			(26,N'Gumbär Gummibärchen'), (27,N'Schoggi Schokolade'),
			(28,N'Rössle Sauerkraut'), (29,N'Thüringer Rostbratwurst'),
			(30,N'Nord-Ost Matjeshering'), (31,N'Gorgonzola Telino'),
			(32,N'Mascarpone Fabioli'), (33,N'Geitost'), (34,N'Sasquatch Ale'),
			(35,N'Steeleye Stout'), (36,N'Inlagd Sill'), (37,N'Gravad lax'),
			(38,N'Côte de Blaye'), (39,N'Chartreuse verte'),
			(40,N'Boston Crab Meat'), (41,N'Jack''s New England Clam Chowder'),
			(42,N'Singaporean Hokkien Fried Mee'),
			(43,N'Ipoh Coffee'), (44,N'Gula Malacca'), (45,N'Rogede sild'),
			(46,N'Spegesild'), (47,N'Zaanse koeken'), (48,N'Chocolade'),
			(49,N'Maxilaku'), (50,N'Valkoinen suklaa'),
			(51,N'Manjimup Dried Apples'), (52,N'Filo Mix'),
			(53,N'Perth Pasties'), (54,N'Tourtière'), (55,N'Pâté chinois'),
			(56,N'Gnocchi di nonna Alice'), (57,N'Ravioli Angelo'),
			(58,N'Escargots de Bourgogne'), (59,N'Raclette Courdavault'),
			(60,N'Camembert Pierrot'), (61,N'Sirop d''érable'),
			(62,N'Tarte au sucre'), (63,N'Vegie-spread'),
			(64,N'Wimmers gute Semmelknödel'), (65,N'Louisiana Fiery Hot Pepper Sauce'),
			(66,N'Louisiana Hot Spiced Okra'), (67,N'Laughing Lumberjack Lager'),
			(68,N'Scottish Longbreads'), (69,N'Gudbrandsdalsost'),
			(70,N'Outback Lager'), (71,N'Flotemysost'), (72,N'Mozzarella di Giovanni'),
			(73,N'Röd Kaviar'), (74,N'Longlife Tofu'), (75,N'Rhönbräu Klosterbier'),
			(76,N'Lakkalikööri'), (77,N'Original Frankfurter grüne Soße')
		) [op]([ProductId], [ProductName]) ON [op].[ProductId] <> [t1].[ProductId] AND [op].[ProductName] = [t1].[ProductName]
WHERE
	[op].[ProductId] IS NULL



