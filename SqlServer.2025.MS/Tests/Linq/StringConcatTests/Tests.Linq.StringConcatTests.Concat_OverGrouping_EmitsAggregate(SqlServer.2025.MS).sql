-- SqlServer.2025.MS SqlServer.2025

SELECT
	[g_1].[GrpId],
	STRING_AGG(Coalesce([g_1].[Value], N''), N'') WITHIN GROUP (ORDER BY [g_1].[PK])
FROM
	[ConcatGroupedEntity] [g_1]
GROUP BY
	[g_1].[GrpId]
ORDER BY
	[g_1].[GrpId]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

