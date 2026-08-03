-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST(DATEDIFF(millisecond, [t].[StartedOn], [t].[FinishedOn]) AS BIGINT) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

