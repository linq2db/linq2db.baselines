-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT DISTINCT
	[t1].[OrderDate]
FROM
	(
		SELECT
			[o].[OrderDate]
		FROM
			[Orders] [o]
		ORDER BY
			[o].[OrderDate]
		LIMIT @take
	) [t1]

