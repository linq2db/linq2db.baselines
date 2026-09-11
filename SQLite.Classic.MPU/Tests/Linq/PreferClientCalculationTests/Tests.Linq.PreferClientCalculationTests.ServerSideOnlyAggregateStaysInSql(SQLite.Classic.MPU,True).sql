-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	GROUP_CONCAT([g_2].[Name], ', ')
FROM
	(
		SELECT
			[g_1].[Id] > 1 as [Key_1],
			[g_1].[Name]
		FROM
			[ClientCalcEntity] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

