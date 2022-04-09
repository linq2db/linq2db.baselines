BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
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

