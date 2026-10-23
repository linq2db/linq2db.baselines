-- SqlServer.2025.MS SqlServer.2025
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

-- SqlServer.2025.MS SqlServer.2025
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

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	CAST((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100 AS Float) / 36000000000
FROM
	[ZonedEventRow] [r]
ORDER BY
	[r].[Id]

