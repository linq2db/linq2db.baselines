BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT NULL [Item1], NULL [Item2] WHERE 1 = 0
				UNION ALL
				VALUES
					('US','CA'), ('US','NY')
				) [t1]
	)

