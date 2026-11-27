-- Access.Ace.Odbc AccessODBC
SELECT
	[m_1].[Id],
	[a_Tags].[Id] as [Id_1],
	[a_Tags].[LogId],
	[a_Tags].[Name]
FROM
	([EagerOrderItem] [m_1]
		INNER JOIN [EagerOrderItemLog] [d] ON ([m_1].[Id] = [d].[ItemId]))
		INNER JOIN [EagerOrderItemTag] [a_Tags] ON ([d].[Id] = [a_Tags].[LogId])
ORDER BY
	[d].[Id] DESC,
	[m_1].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

