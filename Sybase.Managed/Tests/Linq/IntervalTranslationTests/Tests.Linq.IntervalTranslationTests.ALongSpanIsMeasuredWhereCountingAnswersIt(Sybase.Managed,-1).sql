-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2045-06-05 04:03:02.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '1970-01-02 00:00:00.000'

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
SELECT TOP 2
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000,
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 600000000,
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 10000000,
	CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int),
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int)
FROM
	[EventRow] [r]

