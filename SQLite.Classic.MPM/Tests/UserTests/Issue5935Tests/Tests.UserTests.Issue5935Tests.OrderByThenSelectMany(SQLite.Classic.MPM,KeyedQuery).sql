-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[a_Tags].[Id],
	[a_Tags].[LogId],
	[a_Tags].[Name]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2)
		) [k_1]
		INNER JOIN [ItemLog] [d] ON [k_1].[item] = [d].[ItemId]
		INNER JOIN [ItemTag] [a_Tags] ON [d].[Id] = [a_Tags].[LogId]
ORDER BY
	[d].[Id]

