-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Value] as [Value_1]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- SqlCe

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

