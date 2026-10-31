-- Access.Ace.Odbc AccessODBC
SELECT
	[g_1].[Id],
	SUM(IIF([t1].[Value_1] IS NULL, 0, [t1].[Value_1]))
FROM
	[Item] [g_1]
		LEFT JOIN (
			SELECT
				[a_Values].[ItemId],
				[a_Values].[Value] as [Value_1]
			FROM
				[ItemValue] [a_Values]
			WHERE
				[a_Values].[ValueName] = 'Value1'
		) [t1] ON ([g_1].[Id] = [t1].[ItemId])
GROUP BY
	[g_1].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ItemId],
	[d].[ValueName],
	[d].[Value] as [Value_1]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Item] [t1]

