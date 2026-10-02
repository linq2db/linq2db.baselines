-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST(((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 864000000000 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000
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

-- Sybase.Managed Sybase
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) = @Hours

-- Sybase.Managed Sybase
DECLARE @Minutes Integer -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int) = @Minutes

-- Sybase.Managed Sybase
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000 < -1

-- Sybase.Managed Sybase
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) = -@Hours

