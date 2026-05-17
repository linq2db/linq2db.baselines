-- SqlServer.2005

SELECT
	[m_1].[Key_1],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[g_1].[GrpId] as [Key_1]
		FROM
			[ConcatGroupedEntity] [g_1]
	) [m_1]
		INNER JOIN [ConcatGroupedEntity] [d] ON [m_1].[Key_1] = [d].[GrpId]
ORDER BY
	[d].[PK],
	[m_1].[Key_1]

-- SqlServer.2005

SELECT DISTINCT
	[g_1].[GrpId]
FROM
	[ConcatGroupedEntity] [g_1]
ORDER BY
	[g_1].[GrpId]

-- SqlServer.2005

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

