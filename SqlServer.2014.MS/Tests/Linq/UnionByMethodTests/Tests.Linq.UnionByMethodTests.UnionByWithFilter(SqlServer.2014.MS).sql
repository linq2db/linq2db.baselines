-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Key_1],
	[t1].[Value_1],
	[t1].[Priority]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Key_1] ORDER BY [e_1].[SourceIndex], [e_1].[Key_1]) as [RowNumber],
			[e_1].[Id],
			[e_1].[Key_1],
			[e_1].[Value_1],
			[e_1].[Priority]
		FROM
			(
				SELECT
					[e].[Id],
					[e].[Key] as [Key_1],
					[e].[Value] as [Value_1],
					[e].[Priority],
					CAST(0 AS Int) as [SourceIndex]
				FROM
					[UnionByLeft] [e]
				UNION ALL
				SELECT
					[x].[Id],
					[x].[Key] as [Key_1],
					[x].[Value] as [Value_1],
					[x].[Priority],
					CAST(1 AS Int) as [SourceIndex]
				FROM
					[UnionByRight] [x]
				WHERE
					[x].[Key] >= 30
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Key_1]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Key],
	[t1].[Value],
	[t1].[Priority]
FROM
	[UnionByLeft] [t1]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Key],
	[t1].[Value],
	[t1].[Priority]
FROM
	[UnionByRight] [t1]

