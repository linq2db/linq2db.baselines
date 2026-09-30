-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = CAST('2026-01-01T12:00:00.0000000+00:00' AS DATETIMEOFFSET)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = CAST('2026-01-01T14:00:00.0000000+02:00' AS DATETIMEOFFSET)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = CAST('2026-01-01T12:00:00.0000000+02:00' AS DATETIMEOFFSET)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = CAST('2026-01-01T12:00:00.0000000+00:00' AS DATETIMEOFFSET)

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

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

