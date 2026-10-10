-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 0, 0, 7)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 14, 0, 0, 0, 2, 0, 7)

INSERT INTO [ZonedEventRow]
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

-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 2, 0, 7)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 0, 0, 7)

INSERT INTO [ZonedEventRow]
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

-- SqlServer.2012
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2012
SELECT
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

