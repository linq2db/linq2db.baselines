-- SqlCe

SELECT
	[g_1].[Id] as [Key_1],
	SUM(Coalesce(CAST([a_Values].[Value] AS Int), 0)) as [Value1Sum]
FROM
	[Item] [g_1]
		LEFT JOIN [ItemValue] [a_Values] ON [g_1].[Id] = [a_Values].[ItemId] AND [a_Values].[ValueName] = 'Value1'
GROUP BY
	[g_1].[Id]

-- SqlCe

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[ItemId],
	[d].[ValueName],
	[d].[Value] as [Value_1]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Item] [t1]

