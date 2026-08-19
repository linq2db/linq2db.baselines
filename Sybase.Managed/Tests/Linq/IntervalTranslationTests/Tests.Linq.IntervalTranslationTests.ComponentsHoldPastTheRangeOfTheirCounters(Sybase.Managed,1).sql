-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2045-06-05 04:03:02.000'

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
SET     @StartedOn = '1970-01-02 00:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '1970-01-02 00:02:05.000'

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
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
SELECT
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 10000000) % 60 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

