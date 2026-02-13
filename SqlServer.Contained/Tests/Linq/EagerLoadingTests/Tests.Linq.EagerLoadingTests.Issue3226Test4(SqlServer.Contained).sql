-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[Item1],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t1].[Item1]
		FROM
			(
				SELECT
					[x].[Id] as [Item1]
				FROM
					[Item] [x]
			) [t1]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Item1] = [d].[ItemId]

-- SqlServer.Contained SqlServer.2019

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			Coalesce((
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			), 0) as [c1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	[x_1].[c1]

