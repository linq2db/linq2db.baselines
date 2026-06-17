-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Region],
	[p].[Code],
	[p].[Name]
FROM
	[CompositeParent] [p]
ORDER BY
	[p].[Region],
	[p].[Code]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[k_1].[Item1],
	[k_1].[Item2],
	[d].[Id],
	[d].[ParentRegion],
	[d].[ParentCode],
	[d].[Value]
FROM
	(
		SELECT NULL [Item1], NULL [Item2] WHERE 1 = 0
		UNION ALL
		VALUES
			(1,10), (1,20), (2,10)
		) [k_1]
		INNER JOIN [CompositeChild] [d] ON [d].[ParentRegion] = [k_1].[Item1] AND [d].[ParentCode] = [k_1].[Item2]
ORDER BY
	[d].[Id]

