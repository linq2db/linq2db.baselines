-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ItemId],
	[d].[Log]
FROM
	[Item] [m_1]
		INNER JOIN [ItemLog] [d] ON ([m_1].[Id] = [d].[ItemId])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

