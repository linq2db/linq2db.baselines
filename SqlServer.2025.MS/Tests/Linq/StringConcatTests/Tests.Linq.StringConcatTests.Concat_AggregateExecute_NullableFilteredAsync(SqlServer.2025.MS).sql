-- SqlServer.2025.MS SqlServer.2025

SELECT
	Coalesce(STRING_AGG([t1].[Value], N'') WITHIN GROUP (ORDER BY [t1].[PK]), N'')
FROM
	[ConcatGroupedEntity] [t1]

