-- SqlServer.Contained SqlServer.2019
SELECT
	[m_1].[Id],
	[d].[Log]
FROM
	[Item] [m_1]
		INNER JOIN [ItemLog] [d] ON [m_1].[Id] = [d].[ItemId]
ORDER BY
	[d].[ItemId],
	[d].[Id] DESC,
	[m_1].[Id]

-- SqlServer.Contained SqlServer.2019
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

