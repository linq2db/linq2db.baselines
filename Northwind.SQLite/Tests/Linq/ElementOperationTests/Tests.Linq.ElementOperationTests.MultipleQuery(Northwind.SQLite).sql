BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	(
		SELECT
			[zrp].[CategoryName]
		FROM
			[Categories] [zrp]
		LIMIT 1
	)
FROM
	[Products] [p]

