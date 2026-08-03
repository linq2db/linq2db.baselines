-- SqlServer.2019
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartedOn], [t].[FinishedOn]) / 100
FROM
	[NullableDtOffsetSub] [t]
ORDER BY
	[t].[Id]

