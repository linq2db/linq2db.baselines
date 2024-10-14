﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	IIF([x].[Discontinued] = 1, 1, 0)
FROM
	[Products] [x]

