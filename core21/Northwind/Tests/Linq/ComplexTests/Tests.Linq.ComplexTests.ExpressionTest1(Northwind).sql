BeforeExecute
-- Northwind SqlServer.2017

SELECT
	Count(*)
FROM
	[Customers] [x]
WHERE
	([x].[Country] = N'UK' OR [x].[Country] = N'France')

