-- Access.Jet.OleDb AccessOleDb

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
		INNER JOIN [ConcatGroupedEntity] [d] ON ([m_1].[Key_1] = [d].[GrpId])
WHERE
	[d].[Value] IS NOT NULL
ORDER BY
	[m_1].[Key_1]

-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT
	[g_1].[GrpId]
FROM
	[ConcatGroupedEntity] [g_1]
ORDER BY
	[g_1].[GrpId]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

