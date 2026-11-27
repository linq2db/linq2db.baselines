-- Access.Ace.Odbc AccessODBC
SELECT
	[m_1].[Id],
	[d].[Log]
FROM
	[EagerOrderItem] [m_1]
		INNER JOIN [EagerOrderItemLog] [d] ON ([m_1].[Id] = [d].[ItemId])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

