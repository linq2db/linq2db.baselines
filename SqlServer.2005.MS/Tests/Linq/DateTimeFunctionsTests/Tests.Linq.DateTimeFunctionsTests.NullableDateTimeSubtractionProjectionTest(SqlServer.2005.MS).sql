-- SqlServer.2005.MS SqlServer.2005
SELECT
	(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [t].[StartedOn], [t].[FinishedOn]) AS BigInt) AS Int), [t].[StartedOn]), [t].[FinishedOn]) AS BigInt) * 10000
FROM
	[NullableDateTimeSub] [t]
ORDER BY
	[t].[Id]

