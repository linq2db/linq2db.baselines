BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Value] as [Value_1]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text]
		FROM
			[Item] [x]
	) [x_1]
		OUTER APPLY (
			SELECT
				SUM([a_Values].[Value]) as [SUM_1]
			FROM
				[ItemValue] [a_Values]
			WHERE
				[x_1].[Id] = [a_Values].[ItemId]
		) [t1]
ORDER BY
	[t1].[SUM_1]

