-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 50
DECLARE @skip  -- Int32
SET     @skip = 100

SELECT
	[t2].[RequiredDate]
FROM
	(
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
	) [t2]
ORDER BY
	[t2].[RequiredDate] DESC

