-- SqlServer.2014
SELECT
	[m_1].[MasterId],
	[d].[DetailId]
FROM
	(
		SELECT DISTINCT
			[g_1].[MasterId]
		FROM
			[DetailClass] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[MasterId] OR [d].[MasterId] IS NULL AND [m_1].[MasterId] IS NULL
ORDER BY
	[d].[DetailId]

-- SqlServer.2014
SELECT DISTINCT
	[g_1].[MasterId]
FROM
	[DetailClass] [g_1]

-- SqlServer.2014
SELECT
	[t1].[DetailId],
	[t1].[MasterId],
	[t1].[DetailValue]
FROM
	[DetailClass] [t1]

