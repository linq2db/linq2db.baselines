-- SqlCe

SELECT
	[m_1].[Key_1],
	[d].[Value] as [Value_1]
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

-- SqlCe

SELECT DISTINCT
	[g_1].[GrpId] as [Key_1]
FROM
	[ConcatGroupedEntity] [g_1]
ORDER BY
	[g_1].[GrpId]

-- SqlCe

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value] as [Value_1]
FROM
	[ConcatGroupedEntity] [t1]

