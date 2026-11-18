-- SqlServer.2008.MS SqlServer.2008
SELECT
	[m_1].[Id1],
	[d].[DetailId]
FROM
	(
		SELECT DISTINCT
			[a_Master].[Id1]
		FROM
			[DetailClass] [g_1]
				LEFT JOIN [MasterClass] [a_Master] ON [g_1].[MasterId] = [a_Master].[Id1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]
ORDER BY
	[d].[DetailId]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[g_2].[Id1]
FROM
	(
		SELECT DISTINCT
			[a_Master].[Id1],
			[a_Master].[Id2]
		FROM
			[DetailClass] [g_1]
				LEFT JOIN [MasterClass] [a_Master] ON [g_1].[MasterId] = [a_Master].[Id1]
	) [g_2]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[a_Master].[Id1]
		FROM
			[DetailClass] [t1]
				LEFT JOIN [MasterClass] [a_Master] ON [t1].[MasterId] = [a_Master].[Id1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[DetailId],
	[t1].[MasterId],
	[t1].[DetailValue],
	[a_Master].[Id1],
	[a_Master].[Id2],
	[a_Master].[Value],
	[a_Master].[ByteValues]
FROM
	[DetailClass] [t1]
		LEFT JOIN [MasterClass] [a_Master] ON [t1].[MasterId] = [a_Master].[Id1]

