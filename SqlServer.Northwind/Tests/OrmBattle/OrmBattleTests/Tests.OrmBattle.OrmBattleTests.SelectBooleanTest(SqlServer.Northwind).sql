-- SqlServer.Northwind SqlServer.2019

SELECT
	IIF([o].[ShipRegion] = N'WA', 1, 0)
FROM
	[Orders] [o]

