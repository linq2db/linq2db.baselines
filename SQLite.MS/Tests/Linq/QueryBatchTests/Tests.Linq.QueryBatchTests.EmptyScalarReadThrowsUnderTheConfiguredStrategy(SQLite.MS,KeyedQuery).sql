-- SQLite.MS SQLite
SELECT
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
LIMIT 1

-- SQLite.MS SQLite
SELECT
	[g_1].[Id]
FROM
	[BatchGroup] [g_1]
ORDER BY
	[g_1].[Id]

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
SELECT
	(
		SELECT
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		LIMIT 1
	)

