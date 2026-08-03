-- SqlServer.2005
SELECT
	CAST(DATEDIFF(millisecond, [t].[StartedOn], [t].[FinishedOn]) AS BIGINT) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

