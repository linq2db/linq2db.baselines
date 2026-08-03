-- SqlServer.2014.MS SqlServer.2014
SELECT
	CAST(DATEDIFF(millisecond, [t].[StartedOn], [t].[FinishedOn]) AS BIGINT) * 10000
FROM
	[NullableDtOffsetSub] [t]
ORDER BY
	[t].[Id]

