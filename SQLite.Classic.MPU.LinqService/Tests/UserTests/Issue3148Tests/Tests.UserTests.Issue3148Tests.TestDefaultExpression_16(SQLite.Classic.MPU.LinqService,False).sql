BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[LastName],
	[g_2].[f1],
	[g_2].[f3],
	[g_2].[f2]
FROM
	(
		SELECT
			[g_1].[LastName],
			0 as [f1],
			NULL as [f2],
			NULL as [f3]
		FROM
			[Person] [g_1]
	) [g_2]
GROUP BY
	[g_2].[LastName],
	[g_2].[f1],
	[g_2].[f2],
	[g_2].[f3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[LastName],
	[g_2].[f1],
	[g_2].[f3],
	[g_2].[f2]
FROM
	(
		SELECT
			[g_1].[LastName],
			0 as [f1],
			NULL as [f2],
			NULL as [f3]
		FROM
			[Person] [g_1]
	) [g_2]
GROUP BY
	[g_2].[LastName],
	[g_2].[f1],
	[g_2].[f2],
	[g_2].[f3]

