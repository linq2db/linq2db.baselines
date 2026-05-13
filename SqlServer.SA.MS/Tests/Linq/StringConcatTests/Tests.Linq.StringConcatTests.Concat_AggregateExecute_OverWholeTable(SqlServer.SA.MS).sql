-- SqlServer.SA.MS SqlServer.2019

SELECT
	STRING_AGG(Coalesce([t1].[Value], N''), N'') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

