-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[Id],
	SUM(Coalesce(CAST([a_Values].[Value] AS Int), 0))
FROM
	[Item] [g_1]
		LEFT JOIN [ItemValue] [a_Values] ON [g_1].[Id] = [a_Values].[ItemId] AND [a_Values].[ValueName] = N'Value1'
GROUP BY
	[g_1].[Id]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ItemId],
	[d].[ValueName],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Item] [t1]

