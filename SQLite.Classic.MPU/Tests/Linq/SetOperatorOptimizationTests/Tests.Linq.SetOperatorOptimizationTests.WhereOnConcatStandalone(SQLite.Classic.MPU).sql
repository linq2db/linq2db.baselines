-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ItemNumber]
FROM
	(
		SELECT
			[itm].[ItemNumber]
		FROM
			[Thing] [s],
			[Item] [itm]
		WHERE
			[itm].[ItemId] = [s].[ItemId]
		UNION ALL
		SELECT
			[itm_1].[ItemNumber]
		FROM
			[Thing] [t],
			[Item] [itm_1]
		WHERE
			[itm_1].[AltItemId] = [t].[ItemId]
	) [t1]
WHERE
	[t1].[ItemNumber] IS NOT NULL
ORDER BY
	[t1].[ItemNumber]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ItemId],
	[t1].[ItemNumber]
FROM
	[Thing] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[AltItemId],
	[t1].[ItemNumber]
FROM
	[Item] [t1]

