-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[ItemId],
	[d].[UserId],
	[d].[Score]
FROM
	[Issue4458Item] [m_1]
		INNER JOIN [Review] [d] ON [d].[ItemId] = [m_1].[Id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [m_1].[Id] AND [r].[Score] > 95
	)
ORDER BY
	[d].[ItemId],
	[d].[UserId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[i].[Id],
	(
		SELECT
			SUM([s].[QuantityAvailable]) as [TotalAvailable]
		FROM
			[WarehouseStock] [s]
		WHERE
			[s].[ItemId] = [i].[Id] AND [stock].[ItemId] = [s].[ItemId]
	)
FROM
	[Issue4458Item] [i]
		LEFT JOIN [WarehouseStock] [stock] ON [stock].[ItemId] = [i].[Id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Issue4458Item] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[QuantityAvailable],
	[t1].[WarehouseId]
FROM
	[WarehouseStock] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[UserId],
	[t1].[Score]
FROM
	[Review] [t1]

