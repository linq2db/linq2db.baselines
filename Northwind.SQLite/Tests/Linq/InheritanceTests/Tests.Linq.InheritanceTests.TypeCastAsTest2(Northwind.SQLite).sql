BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Discontinued] = 0 THEN 'NULL'
		WHEN [p].[Discontinued] = 1 THEN [p].[ProductName]
		ELSE NULL
	END
FROM
	[Products] [p]

