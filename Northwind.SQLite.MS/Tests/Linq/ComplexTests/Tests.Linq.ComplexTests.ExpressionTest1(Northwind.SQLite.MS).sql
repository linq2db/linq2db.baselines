-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Customers] [x]
WHERE
	[x].[Country] = 'UK' OR [x].[Country] = 'France'

