-- SqlServer.CS SqlServer.2025
SELECT
	[m_1].[Id],
	[d_1].[Log]
FROM
	[EagerOrderItem] [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Log]
			FROM
				[EagerOrderItemLog] [d]
			WHERE
				[m_1].[Id] = [d].[ItemId]
			ORDER BY
				[d].[Id]
		) [d_1]
ORDER BY
	[m_1].[Id]

-- SqlServer.CS SqlServer.2025
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[EagerOrderItem] [i]
ORDER BY
	[i].[Id]

