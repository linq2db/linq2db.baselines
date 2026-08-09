-- SqlServer.SA SqlServer.2019
SELECT
	(DateDiff_Big(day, [t].[StartedOn], [t].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [t].[StartedOn], [t].[FinishedOn]) AS Int), [t].[StartedOn]), [t].[FinishedOn]) / 100
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

