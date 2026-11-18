-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CategoryId],
	[t1].[Name]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [q].[CategoryId] ORDER BY [q].[Id] DESC) as [Rank],
			[q].[Id],
			[q].[CategoryId],
			[o].[Name]
		FROM
			[WindowFunctionTestEntity] [q]
				LEFT JOIN [WindowFunctionTestEntity] [o] ON [q].[CategoryId] = [o].[Id]
	) [t1]
WHERE
	[t1].[Rank] <= 1

