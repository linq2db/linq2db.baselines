-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 10:00:00.006'

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
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]

-- Sybase.Managed Sybase
SELECT
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]
WHERE
	[r].[Id] > 0
UNION ALL
SELECT
	(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt), [r_1].[StartedOn]), [r_1].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r_1]
WHERE
	[r_1].[Id] <= 0

