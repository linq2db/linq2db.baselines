-- SQLite.MS SQLite
SELECT
	[t3].[Id],
	[t3].[Month_1],
	[t3].[Amount]
FROM
	(
		SELECT
			CAST('Jan' AS NVarChar(255)) as [Month_1],
			[t1].[Id],
			[c_1].[Jan] as [Amount]
		FROM
			[OuterParent] [t1]
				LEFT JOIN [OuterChild] [c_1] ON [c_1].[ParentId] = [t1].[Id]
		WHERE
			[c_1].[Jan] IS NOT NULL
		UNION ALL
		SELECT
			CAST('Feb' AS NVarChar(255)) as [Month_1],
			[t2].[Id],
			[c_2].[Feb] as [Amount]
		FROM
			[OuterParent] [t2]
				LEFT JOIN [OuterChild] [c_2] ON [c_2].[ParentId] = [t2].[Id]
		WHERE
			[c_2].[Feb] IS NOT NULL
	) [t3]
ORDER BY
	[t3].[Month_1]

