-- SqlCe
SELECT
	(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt), [t].[StartedOn]), [t].[FinishedOn]) AS BigInt) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

