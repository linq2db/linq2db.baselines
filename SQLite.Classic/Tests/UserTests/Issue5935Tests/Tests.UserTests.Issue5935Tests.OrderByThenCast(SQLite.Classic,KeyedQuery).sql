-- SQLite.Classic SQLite
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ItemId],
	[d].[Log]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2)
		) [k_1]
		INNER JOIN [ItemLog] [d] ON [k_1].[item] = [d].[ItemId]
ORDER BY
	[d].[Id]

