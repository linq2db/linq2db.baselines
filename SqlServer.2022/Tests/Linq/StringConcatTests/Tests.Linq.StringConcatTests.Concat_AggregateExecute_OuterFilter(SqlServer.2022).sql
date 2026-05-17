-- SqlServer.2022

SELECT
	STRING_AGG([t1].[Value], N'') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

