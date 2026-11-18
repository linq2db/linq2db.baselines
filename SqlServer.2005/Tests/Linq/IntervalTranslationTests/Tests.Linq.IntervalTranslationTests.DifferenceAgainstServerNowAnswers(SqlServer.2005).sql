-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2025-06-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2025-06-01T10:00:00.000' AS DATETIME)

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

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS BigInt) AS Int), [r].[StartedOn]), CURRENT_TIMESTAMP) AS BigInt) * 10000 AS Float) / 864000000000 > 1

