-- SqlCe
SELECT
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	CAST(((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / CAST(864000000000 AS BigInt) AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / CAST(600000000 AS BigInt)) % CAST(60 AS BigInt) AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000 > 1

-- SqlCe
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int) = @Hours

-- SqlCe
DECLARE @Minutes Int -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / CAST(600000000 AS BigInt)) % CAST(60 AS BigInt) AS Int) = @Minutes

-- SqlCe
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000 < -1

-- SqlCe
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int) = -@Hours

