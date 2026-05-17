-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Key_1],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[g_1].[GrpId] as [Key_1]
		FROM
			[ConcatGroupedEntity] [g_1]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[Value] as [Value_1]
			FROM
				[ConcatGroupedEntity] [d]
			WHERE
				[m_1].[Key_1] = [d].[GrpId] AND [d].[Value] IS NOT NULL
		) [d_1]
ORDER BY
	[m_1].[Key_1],
	[d_1].[Value_1]

-- SqlServer.2005.MS SqlServer.2005

SELECT DISTINCT
	[g_1].[GrpId]
FROM
	[ConcatGroupedEntity] [g_1]
ORDER BY
	[g_1].[GrpId]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

