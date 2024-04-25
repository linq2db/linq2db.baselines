BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[LastName],
	[g_2].[c1],
	[g_2].[c2],
	[g_2].[c3]
FROM
	(
		SELECT
			[g_1].[LastName],
			0 as [c1],
			NULL as [c2],
			NULL as [c3]
		FROM
			[Person] [g_1]
	) [g_2]
GROUP BY
	[g_2].[LastName],
	[g_2].[c1],
	[g_2].[c2],
	[g_2].[c3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[LastName],
	[g_2].[c1],
	[g_2].[c2],
	[g_2].[c3]
FROM
	(
		SELECT
			[g_1].[LastName],
			0 as [c1],
			NULL as [c2],
			NULL as [c3]
		FROM
			[Person] [g_1]
	) [g_2]
GROUP BY
	[g_2].[LastName],
	[g_2].[c1],
	[g_2].[c2],
	[g_2].[c3]

