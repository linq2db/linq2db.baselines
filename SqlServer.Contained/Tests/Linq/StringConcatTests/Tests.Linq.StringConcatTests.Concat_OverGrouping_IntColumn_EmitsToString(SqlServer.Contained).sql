-- SqlServer.Contained SqlServer.2019

SELECT
	[g_1].[GrpId],
	STRING_AGG(CAST([g_1].[IntV] AS NVarChar(11)), N'') WITHIN GROUP (ORDER BY [g_1].[PK])
FROM
	[ConcatGroupedTypedEntity] [g_1]
GROUP BY
	[g_1].[GrpId]
ORDER BY
	[g_1].[GrpId]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[GuidV],
	[t1].[IntV]
FROM
	[ConcatGroupedTypedEntity] [t1]

