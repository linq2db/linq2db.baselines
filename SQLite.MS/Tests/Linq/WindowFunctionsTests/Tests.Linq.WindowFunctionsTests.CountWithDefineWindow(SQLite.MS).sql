-- SQLite.MS SQLite

SELECT
	COUNT(*) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

