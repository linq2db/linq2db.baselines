-- SqlServer.Northwind SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Customers] [x]
WHERE
	[x].[Country] = N'UK' OR [x].[Country] = N'France'

