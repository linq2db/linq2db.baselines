-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST(((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 864000000000 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000 > 1

