-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			Date([g_1].[CreatedOnUtc]) as [Date_1]
		FROM
			[Issue5390Table] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Date_1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[CreatedOnUtc]
FROM
	[Issue5390Table] [t1]

