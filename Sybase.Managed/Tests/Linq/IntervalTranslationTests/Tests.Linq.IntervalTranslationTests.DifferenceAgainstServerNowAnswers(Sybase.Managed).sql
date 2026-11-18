-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2025-06-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2025-06-01 10:00:00.000'

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
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], GetDate()) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], GetDate()) AS BigInt), [r].[StartedOn]), GetDate()) AS BigInt) * 10000 AS Float) / 864000000000 > 1

