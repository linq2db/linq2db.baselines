-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	GROUP_CONCAT(Coalesce([g_2].[Name], ''), '')
FROM
	(
		SELECT
			[g_1].[Id] > 1 as [Key_1],
			[g_1].[Name]
		FROM
			[BatchCalcEntity] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	GROUP_CONCAT(Coalesce([g_2].[Name], ''), ', ')
FROM
	(
		SELECT
			[g_1].[Id] > 1 as [Key_1],
			[g_1].[Name]
		FROM
			[BatchCalcEntity] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

