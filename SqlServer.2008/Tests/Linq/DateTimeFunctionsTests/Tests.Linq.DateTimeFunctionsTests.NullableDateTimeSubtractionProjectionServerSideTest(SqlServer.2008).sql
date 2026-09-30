-- SqlServer.2008
SELECT
	(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]), [t].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]), [t].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn])), [t].[FinishedOn]) AS BigInt) / 100
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

