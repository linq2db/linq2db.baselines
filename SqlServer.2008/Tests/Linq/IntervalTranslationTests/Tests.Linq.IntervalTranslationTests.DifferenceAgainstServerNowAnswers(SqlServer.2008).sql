-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2025-06-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2025-06-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
SELECT
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), CURRENT_TIMESTAMP) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), CURRENT_TIMESTAMP) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), CURRENT_TIMESTAMP) AS BigInt) / 100 AS Float) / 864000000000 > 1

