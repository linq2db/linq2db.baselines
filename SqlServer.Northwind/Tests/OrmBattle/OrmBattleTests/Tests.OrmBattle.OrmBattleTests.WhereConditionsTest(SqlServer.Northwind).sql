﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued]
FROM
	[Products] [p]
WHERE
	[p].[UnitsInStock] < [p].[ReorderLevel] AND [p].[UnitsOnOrder] = 0

