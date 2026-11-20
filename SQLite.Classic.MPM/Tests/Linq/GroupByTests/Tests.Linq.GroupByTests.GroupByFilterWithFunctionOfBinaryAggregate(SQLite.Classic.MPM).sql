-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	Length([g_2].[Max_1])
FROM
	(
		SELECT
			SUM([g_1].[Id]) as [Sum_1],
			MAX([g_1].[Value]) as [Max_1]
		FROM
			[BinaryGroupItem] [g_1]
		GROUP BY
			[g_1].[Name]
	) [g_2]
WHERE
	[g_2].[Sum_1] NOT BETWEEN 2 AND 3

