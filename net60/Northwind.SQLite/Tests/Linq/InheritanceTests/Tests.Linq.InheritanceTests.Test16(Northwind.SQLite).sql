﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Discontinued],
	[t1].[ReorderLevel],
	[t1].[UnitsOnOrder],
	[t1].[UnitsInStock],
	[t1].[UnitPrice],
	[t1].[QuantityPerUnit],
	[t1].[CategoryID],
	[t1].[SupplierID],
	[t1].[ProductName],
	[t1].[ProductID]
FROM
	[Products] [t1]
WHERE
	[t1].[Discontinued] = 1

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]

