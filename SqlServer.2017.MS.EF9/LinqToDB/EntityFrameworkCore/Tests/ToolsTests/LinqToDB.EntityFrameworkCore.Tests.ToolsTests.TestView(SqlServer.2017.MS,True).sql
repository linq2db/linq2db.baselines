--  SqlServer.2017

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	([e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0) AND (
		SELECT
			COUNT(*)
		FROM
			[Order Details] [a_OrderDetails]
		WHERE
			[e].[ProductID] = [a_OrderDetails].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~'



