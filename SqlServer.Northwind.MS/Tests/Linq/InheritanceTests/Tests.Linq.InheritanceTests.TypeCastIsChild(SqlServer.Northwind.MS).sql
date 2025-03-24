﻿BeforeExecute
--  SqlServer.Northwind.MS SqlServer.2019

SELECT
	[x].[Discontinued],
	[x].[ProductID],
	[x].[ProductName],
	[x].[SupplierID],
	[x].[CategoryID],
	[x].[QuantityPerUnit],
	[x].[UnitPrice],
	[x].[UnitsInStock],
	[x].[UnitsOnOrder],
	[x].[ReorderLevel]
FROM
	[Products] [x]
WHERE
	[x].[Discontinued] = 1

