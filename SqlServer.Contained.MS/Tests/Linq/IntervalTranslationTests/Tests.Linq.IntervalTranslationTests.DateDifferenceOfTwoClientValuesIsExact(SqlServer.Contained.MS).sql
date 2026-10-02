-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 3, 14, 30, 0, 0, 7)

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

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Float -- Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP (2)
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 2468, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @FinishedOn

