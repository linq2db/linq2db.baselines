BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Region],
	[t1].[City]
FROM
	[Customers] [t1]
GROUP BY
	[t1].[Region],
	[t1].[City]

