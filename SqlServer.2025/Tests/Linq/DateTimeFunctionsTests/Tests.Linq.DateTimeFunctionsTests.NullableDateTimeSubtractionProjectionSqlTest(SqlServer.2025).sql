-- SqlServer.2025
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartedOn], [t].[FinishedOn]) / 100
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

