-- SqlServer.2016
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartedOn], [t].[FinishedOn]) / 100
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

