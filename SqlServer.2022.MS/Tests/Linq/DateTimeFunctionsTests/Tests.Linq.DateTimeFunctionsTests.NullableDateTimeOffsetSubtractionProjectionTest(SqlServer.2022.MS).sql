-- SqlServer.2022.MS SqlServer.2022
SELECT
	DATEDIFF_BIG(nanosecond, [t].[StartedOn], [t].[FinishedOn]) / 100
FROM
	[NullableDtOffsetSub] [t]
ORDER BY
	[t].[Id]

