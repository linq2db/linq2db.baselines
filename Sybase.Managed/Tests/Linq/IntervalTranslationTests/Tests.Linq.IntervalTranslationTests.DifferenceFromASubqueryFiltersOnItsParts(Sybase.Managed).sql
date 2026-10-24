-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 3

-- Sybase.Managed Sybase
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) = 1

-- Sybase.Managed Sybase
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000 DESC

-- Sybase.Managed Sybase
SELECT
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- Sybase.Managed Sybase
SELECT
	[r].[Id],
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

