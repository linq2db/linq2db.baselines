BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Customers] [x]
WHERE
	([x].[Country] = 'UK' OR [x].[Country] = 'France')

