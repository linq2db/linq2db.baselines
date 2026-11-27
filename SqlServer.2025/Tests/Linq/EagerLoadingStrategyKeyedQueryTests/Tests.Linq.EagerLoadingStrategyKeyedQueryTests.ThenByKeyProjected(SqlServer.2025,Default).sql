-- SqlServer.2025
SELECT
	[m_1].[Id],
	[d].[ItemId],
	[d].[Id],
	[d].[Log]
FROM
	[EagerOrderItem] [m_1]
		INNER JOIN [EagerOrderItemLog] [d] ON [m_1].[Id] = [d].[ItemId]
ORDER BY
	[d].[ItemId],
	[d].[Id] DESC,
	[m_1].[Id]

-- SqlServer.2025
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

