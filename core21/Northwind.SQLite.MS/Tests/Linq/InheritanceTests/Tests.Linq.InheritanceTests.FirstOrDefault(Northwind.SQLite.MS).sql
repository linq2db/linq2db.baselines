﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT @take

