BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
		INNER JOIN [Products] [p] ON [c_1].[CategoryID] = [p].[CategoryID]
WHERE
	[p].[Discontinued] = 0

