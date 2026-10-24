-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[k_1].[item],
	[d_1].[Log]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2)
		) [k_1]
		INNER JOIN (
			SELECT
				[d].[Log],
				ROW_NUMBER() OVER (PARTITION BY [d].[ItemId] ORDER BY [d].[Id]) as [rn],
				[d].[ItemId],
				[d].[Id]
			FROM
				[ItemLog] [d]
		) [d_1] ON [k_1].[item] = [d_1].[ItemId] AND [d_1].[rn] <= 2
ORDER BY
	[d_1].[Id]

