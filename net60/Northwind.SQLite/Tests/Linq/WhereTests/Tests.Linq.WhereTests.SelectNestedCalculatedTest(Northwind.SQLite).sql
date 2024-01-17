BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[o].[Freight] * 1000
FROM
	[Orders] [o]
WHERE
	[o].[Freight] * 1000 > 100000

