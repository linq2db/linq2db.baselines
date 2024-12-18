BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Customers] [x]
WHERE
	[x].[Country] = N'UK' AND [x].[Country] IS NOT NULL OR
	[x].[Country] = N'France' AND [x].[Country] IS NOT NULL

