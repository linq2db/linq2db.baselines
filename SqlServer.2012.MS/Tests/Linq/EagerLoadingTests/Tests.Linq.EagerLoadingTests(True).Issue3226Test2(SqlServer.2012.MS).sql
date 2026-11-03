-- SqlServer.2012.MS SqlServer.2012
-- Command 1
SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- Command 2
SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
