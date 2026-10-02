-- SqlServer.2012
SELECT
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100 AS Float) / 864000000000,
	CAST(((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int),
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100) / 600000000) % 60 AS Int),
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2)), [x].[StartedOn]) AS BigInt) / 100 AS Float) / 36000000000,
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2)), [x].[StartedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2012
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100 AS Float) / 864000000000 > 1

-- SqlServer.2012
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int) = @Hours

-- SqlServer.2012
DECLARE @Minutes Int -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2), [b].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [b].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]) AS DateTime2)), [b].[FinishedOn]) AS BigInt) / 100) / 600000000) % 60 AS Int) = @Minutes

-- SqlServer.2012
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2)), [x].[StartedOn]) AS BigInt) / 100 AS Float) / 36000000000 < -1

-- SqlServer.2012
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2), [x].[StartedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [b].[FinishedOn], [x].[StartedOn]) AS BigInt) AS Int), [b].[FinishedOn]) AS DateTime2)), [x].[StartedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int) = -@Hours

