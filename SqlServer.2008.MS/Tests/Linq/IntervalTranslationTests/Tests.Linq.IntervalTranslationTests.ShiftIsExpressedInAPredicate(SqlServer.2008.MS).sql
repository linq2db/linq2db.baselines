-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-01T15:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST('2026-03-01T00:00:00.0000000' AS DATETIME2)))) > CAST('2026-03-01T04:00:00.0000000' AS DATETIME2)

