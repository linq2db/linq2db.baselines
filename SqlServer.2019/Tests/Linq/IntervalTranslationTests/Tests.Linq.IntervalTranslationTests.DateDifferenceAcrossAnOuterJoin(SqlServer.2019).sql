-- SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100 AS Float) / 864000000000,
	CAST(((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 864000000000 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2019
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100 AS Float) / 864000000000 > 1

