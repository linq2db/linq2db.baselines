-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Log]
FROM
	[EagerOrderItem] [m_1]
		INNER JOIN [EagerOrderItemLog] [d] ON ([m_1].[Id] = [d].[ItemId])
ORDER BY
	[d].[Id],
	[m_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

