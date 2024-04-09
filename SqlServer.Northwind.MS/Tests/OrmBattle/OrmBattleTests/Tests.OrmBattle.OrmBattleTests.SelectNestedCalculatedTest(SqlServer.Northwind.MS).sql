BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[o].[Freight] * 1000
FROM
	[Orders] [o]
WHERE
	[o].[Freight] * 1000 > 100000

