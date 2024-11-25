Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT CASE
    WHEN EXISTS (
        SELECT 1
        FROM [Products] AS [p]
        WHERE ((@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))) AND (CHARINDEX(N'a', [p].[ProductName]) > 0)) THEN CAST(1 AS bit)
    ELSE CAST(0 AS bit)
END


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


--  SqlServer.2019 (asynchronously)

SELECT
	[p].[IsDeleted],
	[p].[ProductId],
	[p].[ProductName],
	[p].[SupplierId],
	[p].[CategoryId],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued]
FROM
	(VALUES
		(N'Chai',0,1,1,1,N'10 boxes x 20 bags',18.0000,39,0,10,0),
		(N'Chang',0,2,1,1,N'24 - 12 oz bottles',19.0000,17,40,25,0),
		(N'Aniseed Syrup',0,3,1,2,N'12 - 550 ml bottles',10.0000,13,70,25,0),
		(N'Chef Anton''s Cajun Seasoning',0,4,2,2,N'48 - 6 oz jars',22.0000,53,0,0,0),
		(N'Chef Anton''s Gumbo Mix',1,5,2,2,N'36 boxes',21.3500,0,0,0,1),
		(N'Grandma''s Boysenberry Spread',0,6,3,2,N'12 - 8 oz jars',25.0000,120,0,25,0),
		(N'Uncle Bob''s Organic Dried Pears',0,7,3,7,N'12 - 1 lb pkgs.',30.0000,15,0,10,0),
		(N'Northwoods Cranberry Sauce',0,8,3,2,N'12 - 12 oz jars',40.0000,6,0,0,0),
		(N'Mishi Kobe Niku',0,9,4,6,N'18 - 500 g pkgs.',97.0000,29,0,0,1),
		(N'Ikura',0,10,4,8,N'12 - 200 ml jars',31.0000,31,0,0,0),
		(N'Queso Cabrales',0,11,5,4,N'1 kg pkg.',21.0000,22,30,30,0),
		(N'Queso Manchego La Pastora',0,12,5,4,N'10 - 500 g pkgs.',38.0000,86,0,0,0),
		(N'Konbu',0,13,6,8,N'2 kg box',6.0000,24,0,5,0),
		(N'Tofu',0,14,6,7,N'40 - 100 g pkgs.',23.2500,35,0,0,0),
		(N'Genen Shouyu',0,15,6,2,N'24 - 250 ml bottles',15.5000,39,0,5,0),
		(N'Pavlova',0,16,7,3,N'32 - 500 g boxes',17.4500,29,0,10,0),
		(N'Alice Mutton',0,17,7,6,N'20 - 1 kg tins',39.0000,0,0,0,1),
		(N'Carnarvon Tigers',0,18,7,8,N'16 kg pkg.',62.5000,42,0,0,0),
		(N'Teatime Chocolate Biscuits',0,19,8,3,N'10 boxes x 12 pieces',9.2000,25,0,5,0),
		(N'Sir Rodney''s Marmalade',0,20,8,3,N'30 gift boxes',81.0000,40,0,0,0),
		(N'Sir Rodney''s Scones',0,21,8,3,N'24 pkgs. x 4 pieces',10.0000,3,40,5,0),
		(N'Gustaf''s Knäckebröd',0,22,9,5,N'24 - 500 g pkgs.',21.0000,104,0,25,0),
		(N'Tunnbröd',0,23,9,5,N'12 - 250 g pkgs.',9.0000,61,0,25,0),
		(N'Guaraná Fantástica',0,24,10,1,N'12 - 355 ml cans',4.5000,20,0,0,1),
		(N'NuNuCa Nuß-Nougat-Creme',0,25,11,3,N'20 - 450 g glasses',14.0000,76,0,30,0),
		(N'Gumbär Gummibärchen',0,26,11,3,N'100 - 250 g bags',31.2300,15,0,0,0),
		(N'Schoggi Schokolade',0,27,11,3,N'100 - 100 g pieces',43.9000,49,0,30,0),
		(N'Rössle Sauerkraut',0,28,12,7,N'25 - 825 g cans',45.6000,26,0,0,1),
		(N'Thüringer Rostbratwurst',0,29,12,6,N'50 bags x 30 sausgs.',123.7900,0,0,0,1),
		(N'Nord-Ost Matjeshering',0,30,13,8,N'10 - 200 g glasses',25.8900,10,0,15,0),
		(N'Gorgonzola Telino',0,31,14,4,N'12 - 100 g pkgs',12.5000,0,70,20,0),
		(N'Mascarpone Fabioli',0,32,14,4,N'24 - 200 g pkgs.',32.0000,9,40,25,0),
		(N'Geitost',0,33,15,4,N'500 g',2.5000,112,0,20,0),
		(N'Sasquatch Ale',0,34,16,1,N'24 - 12 oz bottles',14.0000,111,0,15,0),
		(N'Steeleye Stout',0,35,16,1,N'24 - 12 oz bottles',18.0000,20,0,15,0),
		(N'Inlagd Sill',0,36,17,8,N'24 - 250 g  jars',19.0000,112,0,20,0),
		(N'Gravad lax',0,37,17,8,N'12 - 500 g pkgs.',26.0000,11,50,25,0),
		(N'Côte de Blaye',0,38,18,1,N'12 - 75 cl bottles',263.5000,17,0,15,0),
		(N'Chartreuse verte',0,39,18,1,N'750 cc per bottle',18.0000,69,0,5,0),
		(N'Boston Crab Meat',0,40,19,8,N'24 - 4 oz tins',18.4000,123,0,30,0),
		(N'Jack''s New England Clam Chowder',0,41,19,8,N'12 - 12 oz cans',9.6500,85,0,10,0),
		(N'Singaporean Hokkien Fried Mee',0,42,20,5,N'32 - 1 kg pkgs.',14.0000,26,0,0,1),
		(N'Ipoh Coffee',0,43,20,1,N'16 - 500 g tins',46.0000,17,10,25,0),
		(N'Gula Malacca',0,44,20,2,N'20 - 2 kg bags',19.4500,27,0,15,0),
		(N'Rogede sild',0,45,21,8,N'1k pkg.',9.5000,5,70,15,0),
		(N'Spegesild',0,46,21,8,N'4 - 450 g glasses',12.0000,95,0,0,0),
		(N'Zaanse koeken',0,47,22,3,N'10 - 4 oz boxes',9.5000,36,0,0,0),
		(N'Chocolade',0,48,22,3,N'10 pkgs.',12.7500,15,70,25,0),
		(N'Maxilaku',0,49,23,3,N'24 - 50 g pkgs.',20.0000,10,60,15,0),
		(N'Valkoinen suklaa',0,50,23,3,N'12 - 100 g bars',16.2500,65,0,30,0),
		(N'Manjimup Dried Apples',0,51,24,7,N'50 - 300 g pkgs.',53.0000,20,0,10,0),
		(N'Filo Mix',0,52,24,5,N'16 - 2 kg boxes',7.0000,38,0,25,0),
		(N'Perth Pasties',0,53,24,6,N'48 pieces',32.8000,0,0,0,1),
		(N'Tourtière',0,54,25,6,N'16 pies',7.4500,21,0,10,0),
		(N'Pâté chinois',0,55,25,6,N'24 boxes x 2 pies',24.0000,115,0,20,0),
		(N'Gnocchi di nonna Alice',0,56,26,5,N'24 - 250 g pkgs.',38.0000,21,10,30,0),
		(N'Ravioli Angelo',0,57,26,5,N'24 - 250 g pkgs.',19.5000,36,0,20,0),
		(N'Escargots de Bourgogne',0,58,27,8,N'24 pieces',13.2500,62,0,20,0),
		(N'Raclette Courdavault',0,59,28,4,N'5 kg pkg.',55.0000,79,0,0,0),
		(N'Camembert Pierrot',0,60,28,4,N'15 - 300 g rounds',34.0000,19,0,0,0),
		(N'Sirop d''érable',0,61,29,2,N'24 - 500 ml bottles',28.5000,113,0,25,0),
		(N'Tarte au sucre',0,62,29,3,N'48 pies',49.3000,17,0,0,0),
		(N'Vegie-spread',0,63,7,2,N'15 - 625 g jars',43.9000,24,0,5,0),
		(N'Wimmers gute Semmelknödel',0,64,12,5,N'20 bags x 4 pieces',33.2500,22,80,30,0),
		(N'Louisiana Fiery Hot Pepper Sauce',0,65,2,2,N'32 - 8 oz bottles',21.0500,76,0,0,0),
		(N'Louisiana Hot Spiced Okra',0,66,2,2,N'24 - 8 oz jars',17.0000,4,100,20,0),
		(N'Laughing Lumberjack Lager',0,67,16,1,N'24 - 12 oz bottles',14.0000,52,0,10,0),
		(N'Scottish Longbreads',0,68,8,3,N'10 boxes x 8 pieces',12.5000,6,10,15,0),
		(N'Gudbrandsdalsost',0,69,15,4,N'10 kg pkg.',36.0000,26,0,15,0),
		(N'Outback Lager',0,70,7,1,N'24 - 355 ml bottles',15.0000,15,10,30,0),
		(N'Flotemysost',0,71,15,4,N'10 - 500 g pkgs.',21.5000,26,0,0,0),
		(N'Mozzarella di Giovanni',0,72,14,4,N'24 - 200 g pkgs.',34.8000,14,0,0,0),
		(N'Röd Kaviar',0,73,17,8,N'24 - 150 g jars',15.0000,101,0,5,0),
		(N'Longlife Tofu',0,74,4,7,N'5 kg pkg.',10.0000,4,20,5,0),
		(N'Rhönbräu Klosterbier',0,75,12,1,N'24 - 0.5 l bottles',7.7500,125,0,25,0),
		(N'Lakkalikööri',0,76,23,1,N'500 ml',18.0000,57,0,20,0),
		(N'Original Frankfurter grüne Soße',0,77,12,2,N'12 boxes',13.0000,32,0,15,0)
	) [p]([ProductName], [IsDeleted], [ProductId], [SupplierId], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued])
WHERE
	[p].[ProductName] LIKE N'%a%' ESCAPE N'~'



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


--  SqlServer.2019 (asynchronously)

SELECT
	[p].[IsDeleted],
	[p].[ProductId],
	[p].[ProductName],
	[p].[SupplierId],
	[p].[CategoryId],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued]
FROM
	(VALUES
		(N'Chai',0,1,1,1,N'10 boxes x 20 bags',18.0000,39,0,10,0),
		(N'Chang',0,2,1,1,N'24 - 12 oz bottles',19.0000,17,40,25,0),
		(N'Aniseed Syrup',0,3,1,2,N'12 - 550 ml bottles',10.0000,13,70,25,0),
		(N'Chef Anton''s Cajun Seasoning',0,4,2,2,N'48 - 6 oz jars',22.0000,53,0,0,0),
		(N'Chef Anton''s Gumbo Mix',1,5,2,2,N'36 boxes',21.3500,0,0,0,1),
		(N'Grandma''s Boysenberry Spread',0,6,3,2,N'12 - 8 oz jars',25.0000,120,0,25,0),
		(N'Uncle Bob''s Organic Dried Pears',0,7,3,7,N'12 - 1 lb pkgs.',30.0000,15,0,10,0),
		(N'Northwoods Cranberry Sauce',0,8,3,2,N'12 - 12 oz jars',40.0000,6,0,0,0),
		(N'Mishi Kobe Niku',0,9,4,6,N'18 - 500 g pkgs.',97.0000,29,0,0,1),
		(N'Ikura',0,10,4,8,N'12 - 200 ml jars',31.0000,31,0,0,0),
		(N'Queso Cabrales',0,11,5,4,N'1 kg pkg.',21.0000,22,30,30,0),
		(N'Queso Manchego La Pastora',0,12,5,4,N'10 - 500 g pkgs.',38.0000,86,0,0,0),
		(N'Konbu',0,13,6,8,N'2 kg box',6.0000,24,0,5,0),
		(N'Tofu',0,14,6,7,N'40 - 100 g pkgs.',23.2500,35,0,0,0),
		(N'Genen Shouyu',0,15,6,2,N'24 - 250 ml bottles',15.5000,39,0,5,0),
		(N'Pavlova',0,16,7,3,N'32 - 500 g boxes',17.4500,29,0,10,0),
		(N'Alice Mutton',0,17,7,6,N'20 - 1 kg tins',39.0000,0,0,0,1),
		(N'Carnarvon Tigers',0,18,7,8,N'16 kg pkg.',62.5000,42,0,0,0),
		(N'Teatime Chocolate Biscuits',0,19,8,3,N'10 boxes x 12 pieces',9.2000,25,0,5,0),
		(N'Sir Rodney''s Marmalade',0,20,8,3,N'30 gift boxes',81.0000,40,0,0,0),
		(N'Sir Rodney''s Scones',0,21,8,3,N'24 pkgs. x 4 pieces',10.0000,3,40,5,0),
		(N'Gustaf''s Knäckebröd',0,22,9,5,N'24 - 500 g pkgs.',21.0000,104,0,25,0),
		(N'Tunnbröd',0,23,9,5,N'12 - 250 g pkgs.',9.0000,61,0,25,0),
		(N'Guaraná Fantástica',0,24,10,1,N'12 - 355 ml cans',4.5000,20,0,0,1),
		(N'NuNuCa Nuß-Nougat-Creme',0,25,11,3,N'20 - 450 g glasses',14.0000,76,0,30,0),
		(N'Gumbär Gummibärchen',0,26,11,3,N'100 - 250 g bags',31.2300,15,0,0,0),
		(N'Schoggi Schokolade',0,27,11,3,N'100 - 100 g pieces',43.9000,49,0,30,0),
		(N'Rössle Sauerkraut',0,28,12,7,N'25 - 825 g cans',45.6000,26,0,0,1),
		(N'Thüringer Rostbratwurst',0,29,12,6,N'50 bags x 30 sausgs.',123.7900,0,0,0,1),
		(N'Nord-Ost Matjeshering',0,30,13,8,N'10 - 200 g glasses',25.8900,10,0,15,0),
		(N'Gorgonzola Telino',0,31,14,4,N'12 - 100 g pkgs',12.5000,0,70,20,0),
		(N'Mascarpone Fabioli',0,32,14,4,N'24 - 200 g pkgs.',32.0000,9,40,25,0),
		(N'Geitost',0,33,15,4,N'500 g',2.5000,112,0,20,0),
		(N'Sasquatch Ale',0,34,16,1,N'24 - 12 oz bottles',14.0000,111,0,15,0),
		(N'Steeleye Stout',0,35,16,1,N'24 - 12 oz bottles',18.0000,20,0,15,0),
		(N'Inlagd Sill',0,36,17,8,N'24 - 250 g  jars',19.0000,112,0,20,0),
		(N'Gravad lax',0,37,17,8,N'12 - 500 g pkgs.',26.0000,11,50,25,0),
		(N'Côte de Blaye',0,38,18,1,N'12 - 75 cl bottles',263.5000,17,0,15,0),
		(N'Chartreuse verte',0,39,18,1,N'750 cc per bottle',18.0000,69,0,5,0),
		(N'Boston Crab Meat',0,40,19,8,N'24 - 4 oz tins',18.4000,123,0,30,0),
		(N'Jack''s New England Clam Chowder',0,41,19,8,N'12 - 12 oz cans',9.6500,85,0,10,0),
		(N'Singaporean Hokkien Fried Mee',0,42,20,5,N'32 - 1 kg pkgs.',14.0000,26,0,0,1),
		(N'Ipoh Coffee',0,43,20,1,N'16 - 500 g tins',46.0000,17,10,25,0),
		(N'Gula Malacca',0,44,20,2,N'20 - 2 kg bags',19.4500,27,0,15,0),
		(N'Rogede sild',0,45,21,8,N'1k pkg.',9.5000,5,70,15,0),
		(N'Spegesild',0,46,21,8,N'4 - 450 g glasses',12.0000,95,0,0,0),
		(N'Zaanse koeken',0,47,22,3,N'10 - 4 oz boxes',9.5000,36,0,0,0),
		(N'Chocolade',0,48,22,3,N'10 pkgs.',12.7500,15,70,25,0),
		(N'Maxilaku',0,49,23,3,N'24 - 50 g pkgs.',20.0000,10,60,15,0),
		(N'Valkoinen suklaa',0,50,23,3,N'12 - 100 g bars',16.2500,65,0,30,0),
		(N'Manjimup Dried Apples',0,51,24,7,N'50 - 300 g pkgs.',53.0000,20,0,10,0),
		(N'Filo Mix',0,52,24,5,N'16 - 2 kg boxes',7.0000,38,0,25,0),
		(N'Perth Pasties',0,53,24,6,N'48 pieces',32.8000,0,0,0,1),
		(N'Tourtière',0,54,25,6,N'16 pies',7.4500,21,0,10,0),
		(N'Pâté chinois',0,55,25,6,N'24 boxes x 2 pies',24.0000,115,0,20,0),
		(N'Gnocchi di nonna Alice',0,56,26,5,N'24 - 250 g pkgs.',38.0000,21,10,30,0),
		(N'Ravioli Angelo',0,57,26,5,N'24 - 250 g pkgs.',19.5000,36,0,20,0),
		(N'Escargots de Bourgogne',0,58,27,8,N'24 pieces',13.2500,62,0,20,0),
		(N'Raclette Courdavault',0,59,28,4,N'5 kg pkg.',55.0000,79,0,0,0),
		(N'Camembert Pierrot',0,60,28,4,N'15 - 300 g rounds',34.0000,19,0,0,0),
		(N'Sirop d''érable',0,61,29,2,N'24 - 500 ml bottles',28.5000,113,0,25,0),
		(N'Tarte au sucre',0,62,29,3,N'48 pies',49.3000,17,0,0,0),
		(N'Vegie-spread',0,63,7,2,N'15 - 625 g jars',43.9000,24,0,5,0),
		(N'Wimmers gute Semmelknödel',0,64,12,5,N'20 bags x 4 pieces',33.2500,22,80,30,0),
		(N'Louisiana Fiery Hot Pepper Sauce',0,65,2,2,N'32 - 8 oz bottles',21.0500,76,0,0,0),
		(N'Louisiana Hot Spiced Okra',0,66,2,2,N'24 - 8 oz jars',17.0000,4,100,20,0),
		(N'Laughing Lumberjack Lager',0,67,16,1,N'24 - 12 oz bottles',14.0000,52,0,10,0),
		(N'Scottish Longbreads',0,68,8,3,N'10 boxes x 8 pieces',12.5000,6,10,15,0),
		(N'Gudbrandsdalsost',0,69,15,4,N'10 kg pkg.',36.0000,26,0,15,0),
		(N'Outback Lager',0,70,7,1,N'24 - 355 ml bottles',15.0000,15,10,30,0),
		(N'Flotemysost',0,71,15,4,N'10 - 500 g pkgs.',21.5000,26,0,0,0),
		(N'Mozzarella di Giovanni',0,72,14,4,N'24 - 200 g pkgs.',34.8000,14,0,0,0),
		(N'Röd Kaviar',0,73,17,8,N'24 - 150 g jars',15.0000,101,0,5,0),
		(N'Longlife Tofu',0,74,4,7,N'5 kg pkg.',10.0000,4,20,5,0),
		(N'Rhönbräu Klosterbier',0,75,12,1,N'24 - 0.5 l bottles',7.7500,125,0,25,0),
		(N'Lakkalikööri',0,76,23,1,N'500 ml',18.0000,57,0,20,0),
		(N'Original Frankfurter grüne Soße',0,77,12,2,N'12 boxes',13.0000,32,0,15,0)
	) [p]([ProductName], [IsDeleted], [ProductId], [SupplierId], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued])
WHERE
	[p].[ProductName] LIKE N'%a%' ESCAPE N'~'



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


--  SqlServer.2019 (asynchronously)

SELECT
	[p].[IsDeleted],
	[p].[ProductId],
	[p].[ProductName],
	[p].[SupplierId],
	[p].[CategoryId],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued]
FROM
	(VALUES
		(N'Chai',0,1,1,1,N'10 boxes x 20 bags',18.0000,39,0,10,0),
		(N'Chang',0,2,1,1,N'24 - 12 oz bottles',19.0000,17,40,25,0),
		(N'Aniseed Syrup',0,3,1,2,N'12 - 550 ml bottles',10.0000,13,70,25,0),
		(N'Chef Anton''s Cajun Seasoning',0,4,2,2,N'48 - 6 oz jars',22.0000,53,0,0,0),
		(N'Chef Anton''s Gumbo Mix',1,5,2,2,N'36 boxes',21.3500,0,0,0,1),
		(N'Grandma''s Boysenberry Spread',0,6,3,2,N'12 - 8 oz jars',25.0000,120,0,25,0),
		(N'Uncle Bob''s Organic Dried Pears',0,7,3,7,N'12 - 1 lb pkgs.',30.0000,15,0,10,0),
		(N'Northwoods Cranberry Sauce',0,8,3,2,N'12 - 12 oz jars',40.0000,6,0,0,0),
		(N'Mishi Kobe Niku',0,9,4,6,N'18 - 500 g pkgs.',97.0000,29,0,0,1),
		(N'Ikura',0,10,4,8,N'12 - 200 ml jars',31.0000,31,0,0,0),
		(N'Queso Cabrales',0,11,5,4,N'1 kg pkg.',21.0000,22,30,30,0),
		(N'Queso Manchego La Pastora',0,12,5,4,N'10 - 500 g pkgs.',38.0000,86,0,0,0),
		(N'Konbu',0,13,6,8,N'2 kg box',6.0000,24,0,5,0),
		(N'Tofu',0,14,6,7,N'40 - 100 g pkgs.',23.2500,35,0,0,0),
		(N'Genen Shouyu',0,15,6,2,N'24 - 250 ml bottles',15.5000,39,0,5,0),
		(N'Pavlova',0,16,7,3,N'32 - 500 g boxes',17.4500,29,0,10,0),
		(N'Alice Mutton',0,17,7,6,N'20 - 1 kg tins',39.0000,0,0,0,1),
		(N'Carnarvon Tigers',0,18,7,8,N'16 kg pkg.',62.5000,42,0,0,0),
		(N'Teatime Chocolate Biscuits',0,19,8,3,N'10 boxes x 12 pieces',9.2000,25,0,5,0),
		(N'Sir Rodney''s Marmalade',0,20,8,3,N'30 gift boxes',81.0000,40,0,0,0),
		(N'Sir Rodney''s Scones',0,21,8,3,N'24 pkgs. x 4 pieces',10.0000,3,40,5,0),
		(N'Gustaf''s Knäckebröd',0,22,9,5,N'24 - 500 g pkgs.',21.0000,104,0,25,0),
		(N'Tunnbröd',0,23,9,5,N'12 - 250 g pkgs.',9.0000,61,0,25,0),
		(N'Guaraná Fantástica',0,24,10,1,N'12 - 355 ml cans',4.5000,20,0,0,1),
		(N'NuNuCa Nuß-Nougat-Creme',0,25,11,3,N'20 - 450 g glasses',14.0000,76,0,30,0),
		(N'Gumbär Gummibärchen',0,26,11,3,N'100 - 250 g bags',31.2300,15,0,0,0),
		(N'Schoggi Schokolade',0,27,11,3,N'100 - 100 g pieces',43.9000,49,0,30,0),
		(N'Rössle Sauerkraut',0,28,12,7,N'25 - 825 g cans',45.6000,26,0,0,1),
		(N'Thüringer Rostbratwurst',0,29,12,6,N'50 bags x 30 sausgs.',123.7900,0,0,0,1),
		(N'Nord-Ost Matjeshering',0,30,13,8,N'10 - 200 g glasses',25.8900,10,0,15,0),
		(N'Gorgonzola Telino',0,31,14,4,N'12 - 100 g pkgs',12.5000,0,70,20,0),
		(N'Mascarpone Fabioli',0,32,14,4,N'24 - 200 g pkgs.',32.0000,9,40,25,0),
		(N'Geitost',0,33,15,4,N'500 g',2.5000,112,0,20,0),
		(N'Sasquatch Ale',0,34,16,1,N'24 - 12 oz bottles',14.0000,111,0,15,0),
		(N'Steeleye Stout',0,35,16,1,N'24 - 12 oz bottles',18.0000,20,0,15,0),
		(N'Inlagd Sill',0,36,17,8,N'24 - 250 g  jars',19.0000,112,0,20,0),
		(N'Gravad lax',0,37,17,8,N'12 - 500 g pkgs.',26.0000,11,50,25,0),
		(N'Côte de Blaye',0,38,18,1,N'12 - 75 cl bottles',263.5000,17,0,15,0),
		(N'Chartreuse verte',0,39,18,1,N'750 cc per bottle',18.0000,69,0,5,0),
		(N'Boston Crab Meat',0,40,19,8,N'24 - 4 oz tins',18.4000,123,0,30,0),
		(N'Jack''s New England Clam Chowder',0,41,19,8,N'12 - 12 oz cans',9.6500,85,0,10,0),
		(N'Singaporean Hokkien Fried Mee',0,42,20,5,N'32 - 1 kg pkgs.',14.0000,26,0,0,1),
		(N'Ipoh Coffee',0,43,20,1,N'16 - 500 g tins',46.0000,17,10,25,0),
		(N'Gula Malacca',0,44,20,2,N'20 - 2 kg bags',19.4500,27,0,15,0),
		(N'Rogede sild',0,45,21,8,N'1k pkg.',9.5000,5,70,15,0),
		(N'Spegesild',0,46,21,8,N'4 - 450 g glasses',12.0000,95,0,0,0),
		(N'Zaanse koeken',0,47,22,3,N'10 - 4 oz boxes',9.5000,36,0,0,0),
		(N'Chocolade',0,48,22,3,N'10 pkgs.',12.7500,15,70,25,0),
		(N'Maxilaku',0,49,23,3,N'24 - 50 g pkgs.',20.0000,10,60,15,0),
		(N'Valkoinen suklaa',0,50,23,3,N'12 - 100 g bars',16.2500,65,0,30,0),
		(N'Manjimup Dried Apples',0,51,24,7,N'50 - 300 g pkgs.',53.0000,20,0,10,0),
		(N'Filo Mix',0,52,24,5,N'16 - 2 kg boxes',7.0000,38,0,25,0),
		(N'Perth Pasties',0,53,24,6,N'48 pieces',32.8000,0,0,0,1),
		(N'Tourtière',0,54,25,6,N'16 pies',7.4500,21,0,10,0),
		(N'Pâté chinois',0,55,25,6,N'24 boxes x 2 pies',24.0000,115,0,20,0),
		(N'Gnocchi di nonna Alice',0,56,26,5,N'24 - 250 g pkgs.',38.0000,21,10,30,0),
		(N'Ravioli Angelo',0,57,26,5,N'24 - 250 g pkgs.',19.5000,36,0,20,0),
		(N'Escargots de Bourgogne',0,58,27,8,N'24 pieces',13.2500,62,0,20,0),
		(N'Raclette Courdavault',0,59,28,4,N'5 kg pkg.',55.0000,79,0,0,0),
		(N'Camembert Pierrot',0,60,28,4,N'15 - 300 g rounds',34.0000,19,0,0,0),
		(N'Sirop d''érable',0,61,29,2,N'24 - 500 ml bottles',28.5000,113,0,25,0),
		(N'Tarte au sucre',0,62,29,3,N'48 pies',49.3000,17,0,0,0),
		(N'Vegie-spread',0,63,7,2,N'15 - 625 g jars',43.9000,24,0,5,0),
		(N'Wimmers gute Semmelknödel',0,64,12,5,N'20 bags x 4 pieces',33.2500,22,80,30,0),
		(N'Louisiana Fiery Hot Pepper Sauce',0,65,2,2,N'32 - 8 oz bottles',21.0500,76,0,0,0),
		(N'Louisiana Hot Spiced Okra',0,66,2,2,N'24 - 8 oz jars',17.0000,4,100,20,0),
		(N'Laughing Lumberjack Lager',0,67,16,1,N'24 - 12 oz bottles',14.0000,52,0,10,0),
		(N'Scottish Longbreads',0,68,8,3,N'10 boxes x 8 pieces',12.5000,6,10,15,0),
		(N'Gudbrandsdalsost',0,69,15,4,N'10 kg pkg.',36.0000,26,0,15,0),
		(N'Outback Lager',0,70,7,1,N'24 - 355 ml bottles',15.0000,15,10,30,0),
		(N'Flotemysost',0,71,15,4,N'10 - 500 g pkgs.',21.5000,26,0,0,0),
		(N'Mozzarella di Giovanni',0,72,14,4,N'24 - 200 g pkgs.',34.8000,14,0,0,0),
		(N'Röd Kaviar',0,73,17,8,N'24 - 150 g jars',15.0000,101,0,5,0),
		(N'Longlife Tofu',0,74,4,7,N'5 kg pkg.',10.0000,4,20,5,0),
		(N'Rhönbräu Klosterbier',0,75,12,1,N'24 - 0.5 l bottles',7.7500,125,0,25,0),
		(N'Lakkalikööri',0,76,23,1,N'500 ml',18.0000,57,0,20,0),
		(N'Original Frankfurter grüne Soße',0,77,12,2,N'12 boxes',13.0000,32,0,15,0)
	) [p]([ProductName], [IsDeleted], [ProductId], [SupplierId], [CategoryId], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued])
WHERE
	[p].[ProductName] LIKE N'%a%' ESCAPE N'~'



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT [p].[ProductID], [p].[CategoryID], [p].[Discontinued], [p].[IsDeleted], [p].[ProductName], [p].[QuantityPerUnit], [p].[ReorderLevel], [p].[SupplierID], [p].[UnitPrice], [p].[UnitsInStock], [p].[UnitsOnOrder]
FROM [Products] AS [p]
WHERE (@__ef_filter__p_0 = CAST(1 AS bit)) OR ([p].[IsDeleted] <> CAST(1 AS bit))


--  SqlServer.2019 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(N'Chai'), (N'Chang'), (N'Aniseed Syrup'), (N'Chef Anton''s Cajun Seasoning'),
				(N'Chef Anton''s Gumbo Mix'), (N'Grandma''s Boysenberry Spread'),
				(N'Uncle Bob''s Organic Dried Pears'),
				(N'Northwoods Cranberry Sauce'), (N'Mishi Kobe Niku'),
				(N'Ikura'), (N'Queso Cabrales'), (N'Queso Manchego La Pastora'),
				(N'Konbu'), (N'Tofu'), (N'Genen Shouyu'), (N'Pavlova'),
				(N'Alice Mutton'), (N'Carnarvon Tigers'), (N'Teatime Chocolate Biscuits'),
				(N'Sir Rodney''s Marmalade'), (N'Sir Rodney''s Scones'),
				(N'Gustaf''s Knäckebröd'), (N'Tunnbröd'), (N'Guaraná Fantástica'),
				(N'NuNuCa Nuß-Nougat-Creme'), (N'Gumbär Gummibärchen'),
				(N'Schoggi Schokolade'), (N'Rössle Sauerkraut'),
				(N'Thüringer Rostbratwurst'), (N'Nord-Ost Matjeshering'),
				(N'Gorgonzola Telino'), (N'Mascarpone Fabioli'),
				(N'Geitost'), (N'Sasquatch Ale'), (N'Steeleye Stout'),
				(N'Inlagd Sill'), (N'Gravad lax'), (N'Côte de Blaye'),
				(N'Chartreuse verte'), (N'Boston Crab Meat'),
				(N'Jack''s New England Clam Chowder'),
				(N'Singaporean Hokkien Fried Mee'),
				(N'Ipoh Coffee'), (N'Gula Malacca'), (N'Rogede sild'),
				(N'Spegesild'), (N'Zaanse koeken'), (N'Chocolade'),
				(N'Maxilaku'), (N'Valkoinen suklaa'), (N'Manjimup Dried Apples'),
				(N'Filo Mix'), (N'Perth Pasties'), (N'Tourtière'),
				(N'Pâté chinois'), (N'Gnocchi di nonna Alice'),
				(N'Ravioli Angelo'), (N'Escargots de Bourgogne'),
				(N'Raclette Courdavault'), (N'Camembert Pierrot'),
				(N'Sirop d''érable'), (N'Tarte au sucre'), (N'Vegie-spread'),
				(N'Wimmers gute Semmelknödel'), (N'Louisiana Fiery Hot Pepper Sauce'),
				(N'Louisiana Hot Spiced Okra'), (N'Laughing Lumberjack Lager'),
				(N'Scottish Longbreads'), (N'Gudbrandsdalsost'),
				(N'Outback Lager'), (N'Flotemysost'), (N'Mozzarella di Giovanni'),
				(N'Röd Kaviar'), (N'Longlife Tofu'), (N'Rhönbräu Klosterbier'),
				(N'Lakkalikööri'), (N'Original Frankfurter grüne Soße')
			) [p]([ProductName])
		WHERE
			[p].[ProductName] LIKE N'%a%' ESCAPE N'~'
	), 1, 0)



