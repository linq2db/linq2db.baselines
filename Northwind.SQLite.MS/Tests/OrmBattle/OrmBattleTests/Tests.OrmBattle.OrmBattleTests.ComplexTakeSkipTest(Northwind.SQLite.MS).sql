-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 50
DECLARE @skip  -- Int32
SET     @skip = 100

SELECT DISTINCT
	[t1].[RequiredDate]
FROM
	(
		SELECT
			[o].[RequiredDate],
			[o].[OrderDate]
		FROM
			[Orders] [o]
		ORDER BY
			[o].[OrderDate]
		LIMIT @take OFFSET @skip
	) [t1]
WHERE
	[t1].[OrderDate] IS NOT NULL
ORDER BY
	[t1].[RequiredDate] DESC

