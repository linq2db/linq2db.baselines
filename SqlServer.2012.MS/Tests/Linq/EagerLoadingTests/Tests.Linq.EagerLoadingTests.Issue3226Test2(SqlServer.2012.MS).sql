-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

