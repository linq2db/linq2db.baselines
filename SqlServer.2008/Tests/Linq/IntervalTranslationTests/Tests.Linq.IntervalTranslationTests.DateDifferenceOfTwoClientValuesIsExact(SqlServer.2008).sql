-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-03T14:30:00.0000000' AS DATETIME2)

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
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Float -- Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP (2)
	@Ticks + [r].[Id],
	@TotalMilliseconds + CAST([r].[Id] AS Float)
FROM
	[EventRow] [r]

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.2008
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-03T13:30:00.0002468' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @FinishedOn

