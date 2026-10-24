-- SqlServer.2014.MS SqlServer.2014
SELECT
	(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]) AS DateTime2), [t].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]) AS DateTime2), [t].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]) AS DateTime2)), [t].[FinishedOn]) AS BigInt) / 100
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

