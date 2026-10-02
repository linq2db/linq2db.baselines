-- SqlServer.2022
SELECT
	CAST((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100 AS Float) / 864000000000,
	CAST(((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 864000000000 AS Int),
	CAST((((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 36000000000) % 24 AS Int),
	CAST((((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 600000000) % 60 AS Int),
	CAST((DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) AS Int), [b].[FinishedOn]), [x].[StartedOn]) / 100 AS Float) / 36000000000,
	CAST((((DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) AS Int), [b].[FinishedOn]), [x].[StartedOn]) / 100) / 36000000000) % 24 AS Int)
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
ORDER BY
	[x].[Id]

-- SqlServer.2022
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100 AS Float) / 864000000000 > 1

-- SqlServer.2022
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 36000000000) % 24 AS Int) = @Hours

-- SqlServer.2022
DECLARE @Minutes Int -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [b].[FinishedOn]) AS Int), [x].[StartedOn]), [b].[FinishedOn]) / 100) / 600000000) % 60 AS Int) = @Minutes

-- SqlServer.2022
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) AS Int), [b].[FinishedOn]), [x].[StartedOn]) / 100 AS Float) / 36000000000 < -1

-- SqlServer.2022
DECLARE @Hours Int -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON [b].[Id] = [x].[Id]
WHERE
	CAST((((DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [b].[FinishedOn], [x].[StartedOn]) AS Int), [b].[FinishedOn]), [x].[StartedOn]) / 100) / 36000000000) % 24 AS Int) = -@Hours

