BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	([r].[Freight] * 1000) / 1000
FROM
	[Orders] [r]
WHERE
	[r].[Freight] * 1000 > 100000

