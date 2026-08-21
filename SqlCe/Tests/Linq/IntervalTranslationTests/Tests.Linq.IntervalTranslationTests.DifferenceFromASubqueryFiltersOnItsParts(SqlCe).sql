-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 15:00:00.000'

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SqlCe
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 3

-- SqlCe
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int) = 1

-- SqlCe
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000 DESC

-- SqlCe
SELECT
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- SqlCe
SELECT
	[r].[Id],
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

