-- SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- SqlServer.2019

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

