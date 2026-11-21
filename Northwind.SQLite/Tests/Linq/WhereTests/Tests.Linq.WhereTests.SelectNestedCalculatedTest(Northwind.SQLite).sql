-- Northwind.SQLite SQLite.Classic SQLite
SELECT
	CAST([r].[Freight] * 1000 AS Float) / 1000
FROM
	[Orders] [r]
WHERE
	[r].[Freight] * 1000 > 100000

