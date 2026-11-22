-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[g_1].[Id]
FROM
	[BatchGroup] [g_1]
ORDER BY
	[g_1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[Value],
	[d].[GroupId],
	[d].[Name]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3), (4)
		) [k_1]
		INNER JOIN [BatchItem] [d] ON [d].[GroupId] = [k_1].[item]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				1 as [Item1],
				[i].[Value] as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
			LIMIT 1
		) [t1] ON 1=1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[g_1].[Id]
FROM
	[BatchGroup] [g_1]
ORDER BY
	[g_1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[Value],
	[d].[GroupId],
	[d].[Name]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3), (4)
		) [k_1]
		INNER JOIN [BatchItem] [d] ON [d].[GroupId] = [k_1].[item]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				1 as [Item1],
				[i].[Value] as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 3
			LIMIT 1
		) [t1] ON 1=1

