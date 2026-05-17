-- SqlServer.2022

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
	[e].[IsDeleted] = 0 AND (
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e_1]
		WHERE
			[e_1].[IsDeleted] = 0 AND [e].[ProductID] = [e_1].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~'



