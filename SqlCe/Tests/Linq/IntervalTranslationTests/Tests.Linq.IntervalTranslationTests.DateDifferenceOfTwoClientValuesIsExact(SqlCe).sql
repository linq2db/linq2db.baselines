-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-03 13:30:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-03 14:30:00.000'

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

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Float -- Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP (2)
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
FROM
	[EventRow] [r]

-- SqlCe
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlCe
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlCe
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @FinishedOn

