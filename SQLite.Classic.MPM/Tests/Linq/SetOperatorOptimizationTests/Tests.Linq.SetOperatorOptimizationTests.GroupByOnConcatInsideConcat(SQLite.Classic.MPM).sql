-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t2].[ItemNumber],
	[t2].[Count_1]
FROM
	(
		SELECT
			[t1].[ItemNumber],
			COUNT(*) as [Count_1]
		FROM
			(
				SELECT
					[itm].[ItemNumber]
				FROM
					[Thing] [g_1],
					[Item] [itm]
				WHERE
					[itm].[ItemId] = [g_1].[ItemId]
				UNION ALL
				SELECT
					[itm_1].[ItemNumber]
				FROM
					[Thing] [t],
					[Item] [itm_1]
				WHERE
					[itm_1].[AltItemId] = [t].[ItemId]
			) [t1]
		GROUP BY
			[t1].[ItemNumber]
		UNION ALL
		SELECT
			[g_2].[ItemNumber],
			COUNT(*) as [Count_1]
		FROM
			[Thing] [g_2]
		GROUP BY
			[g_2].[ItemNumber]
	) [t2]
ORDER BY
	[t2].[ItemNumber],
	[t2].[Count_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ItemId],
	[t1].[ItemNumber]
FROM
	[Thing] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[AltItemId],
	[t1].[ItemNumber]
FROM
	[Item] [t1]

