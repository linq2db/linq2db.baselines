BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[zrp].[CategoryName]
		FROM
			[Categories] [zrp]
		LIMIT @take
	)
FROM
	[Products] [p]

