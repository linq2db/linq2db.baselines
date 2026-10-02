-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-03T13:30:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-03T14:30:00.000' AS DATETIME)

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
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Float -- Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP (2)
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.2005
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @FinishedOn

