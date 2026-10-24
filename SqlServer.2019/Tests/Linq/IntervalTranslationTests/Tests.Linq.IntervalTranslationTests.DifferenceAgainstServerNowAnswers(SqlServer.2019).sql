-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2025, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2025, 6, 1, 10, 0, 0, 0, 7)

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

-- SqlServer.2019
SELECT
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[StartedOn], CURRENT_TIMESTAMP) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], CURRENT_TIMESTAMP) AS Int), [r].[StartedOn]), CURRENT_TIMESTAMP) / 100 AS Float) / 864000000000 > 1

