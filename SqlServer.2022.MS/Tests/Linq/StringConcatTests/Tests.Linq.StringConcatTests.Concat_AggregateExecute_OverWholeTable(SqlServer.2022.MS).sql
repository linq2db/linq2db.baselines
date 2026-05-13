-- SqlServer.2022.MS SqlServer.2022

SELECT
	STRING_AGG(Coalesce([t1].[Value], N''), N'') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

