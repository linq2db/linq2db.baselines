-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	([r].[Freight] * 1000) / 1000
FROM
	[Orders] [r]
WHERE
	[r].[Freight] * 1000 > 100000

