-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 0, 0, 7)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 14, 0, 0, 0, 2, 0, 7)

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

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTimeOffset
SET     @StartedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 2, 0, 7)
DECLARE @FinishedOn DateTimeOffset
SET     @FinishedOn = DATETIMEOFFSETFROMPARTS(2026, 1, 1, 12, 0, 0, 0, 0, 0, 7)

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

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 AS Float) / 36000000000
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

