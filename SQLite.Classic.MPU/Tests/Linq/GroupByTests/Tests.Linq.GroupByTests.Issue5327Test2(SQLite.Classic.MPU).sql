-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	[t1].[Sum_1]
FROM
	(
		SELECT
			SUM([c_1].[Value]) as [Sum_1],
			[c_1].[Key] as [Key_1]
		FROM
			[Issue5327Table] [c_1]
		GROUP BY
			[c_1].[Key]
	) [t1]
ORDER BY
	[t1].[Sum_1] DESC

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Key],
	[t1].[Value]
FROM
	[Issue5327Table] [t1]

