﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]
WHERE
	[t1].[Discontinued] = 1

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[product].[ProductName]
FROM
	[Products] [product]
WHERE
	[product].[Discontinued] = 1

