-- SqlServer.2025

SELECT
	[g_1].[GrpId],
	Coalesce(STRING_AGG([g_1].[Value], N'') WITHIN GROUP (ORDER BY [g_1].[PK]), N'')
FROM
	[ConcatGroupedEntity] [g_1]
GROUP BY
	[g_1].[GrpId]
ORDER BY
	[g_1].[GrpId]

-- SqlServer.2025

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

