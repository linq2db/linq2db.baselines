-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

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
SELECT TOP 2
	[r].[FinishedOn],
	[r].[StartedOn],
	DatePart(hour, [r].[FinishedOn])
FROM
	[EventRow] [r]

