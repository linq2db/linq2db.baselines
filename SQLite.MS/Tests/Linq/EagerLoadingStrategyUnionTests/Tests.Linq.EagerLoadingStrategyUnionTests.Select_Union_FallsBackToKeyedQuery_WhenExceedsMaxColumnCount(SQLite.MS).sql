-- SQLite.MS SQLite

SELECT
	[p].[Id],
	ROW_NUMBER() OVER (ORDER BY [p].[Id]),
	[p].[Name],
	[p].[Id],
	[p].[Name]
FROM
	[MaxColParent] [p]
ORDER BY
	[p].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ParentId],
	[d].[Name],
	[d].[Value]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3)
		) [k_1]
		INNER JOIN [MaxColChildA] [d] ON [d].[ParentId] = [k_1].[item]
ORDER BY
	[d].[Id]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[Id],
	[d].[ParentId],
	[d].[Name],
	[d].[Rate]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3)
		) [k_1]
		INNER JOIN [MaxColChildB] [d] ON [d].[ParentId] = [k_1].[item]
ORDER BY
	[d].[Id]

