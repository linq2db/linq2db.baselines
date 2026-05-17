-- SqlServer.2025.MS SqlServer.2025

SELECT
	STRING_AGG(Coalesce([t1].[Value], N''), N'') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

