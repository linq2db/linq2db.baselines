-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-05 00:00:00.000'

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
SET     @StartedOn = '2026-01-03 00:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-03 20:00:00.000'

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
DECLARE @asOf DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 36000000000 > 24

-- Sybase.Managed Sybase
DECLARE @asOf DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt), @asOf), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 24

-- Sybase.Managed Sybase
DECLARE @asOf DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 600000000

-- Sybase.Managed Sybase
DECLARE @asOf DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT TOP 2
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST((((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt), [r].[StartedOn]), @asOf) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

