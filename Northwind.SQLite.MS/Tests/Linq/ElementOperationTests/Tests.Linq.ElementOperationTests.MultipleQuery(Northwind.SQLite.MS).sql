BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

