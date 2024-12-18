BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Customers] [x]
WHERE
	[x].[Country] = 'UK' AND [x].[Country] IS NOT NULL OR
	[x].[Country] = 'France' AND [x].[Country] IS NOT NULL

