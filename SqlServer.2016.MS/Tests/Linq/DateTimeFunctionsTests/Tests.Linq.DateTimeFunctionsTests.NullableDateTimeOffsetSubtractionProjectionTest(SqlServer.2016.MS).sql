-- SqlServer.2016.MS SqlServer.2016
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartedOn], [t].[FinishedOn]) / 100
FROM
	[NullableDtOffsetSub] [t]
ORDER BY
	[t].[Id]

