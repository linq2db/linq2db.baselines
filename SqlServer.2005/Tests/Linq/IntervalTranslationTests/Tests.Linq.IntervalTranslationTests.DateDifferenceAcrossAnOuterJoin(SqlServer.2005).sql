-- SqlServer.2005
SELECT
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	CAST(((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 864000000000 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2005
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000 > 1

-- SqlServer.2005
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) = @Hours

-- SqlServer.2005
DECLARE @Minutes Int -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [b].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int) = @Minutes

-- SqlServer.2005
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000 AS Float) / 36000000000 < -1

-- SqlServer.2005
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]), [x].[StartedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) = -@Hours

