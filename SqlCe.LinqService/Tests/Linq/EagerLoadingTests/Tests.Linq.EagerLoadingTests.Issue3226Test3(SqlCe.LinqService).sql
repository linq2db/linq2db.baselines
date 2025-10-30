BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Value] as [Value_1]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
		OUTER APPLY (
			SELECT
				SUM([a_Values].[Value]) as [Sum_1]
			FROM
				[ItemValue] [a_Values]
			WHERE
				[x].[Id] = [a_Values].[ItemId]
		) [t1]
ORDER BY
	[t1].[Sum_1]

