-- SqlServer.2017.MS SqlServer.2017
SELECT
	[m_1].[Id],
	[d_1].[Log]
FROM
	[Item] [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Log]
			FROM
				[ItemLog] [d]
			WHERE
				[m_1].[Id] = [d].[ItemId]
			ORDER BY
				[d].[Id]
		) [d_1]
ORDER BY
	[m_1].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

