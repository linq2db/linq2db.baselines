BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Customers] [x]
WHERE
	([x].[Country] = 'UK' OR [x].[Country] = 'France')

