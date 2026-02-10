-- Access.Ace.Odbc AccessODBC

SELECT
	[g_2].[Key_1],
	SUM(IIF([g_2].[Value_1] IS NULL, 0, [g_2].[Value_1]))
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			[a_Values].[Value] as [Value_1]
		FROM
			[Item] [g_1]
				LEFT JOIN [ItemValue] [a_Values] ON ([g_1].[Id] = [a_Values].[ItemId] AND [a_Values].[ValueName] = 'Value1')
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[ItemId],
	[d].[ValueName],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Item] [t1]

