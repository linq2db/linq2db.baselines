-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-03 13:30:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
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

-- SQLite.MS SQLite
DECLARE @Ticks Integer -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Real -- Double
SET     @TotalMilliseconds = 0.1234

SELECT
	@Ticks + [r].[Id],
	@TotalMilliseconds + CAST([r].[Id] AS Float)
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- SQLite.MS SQLite
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[FinishedOn]) > strftime('%Y-%m-%d %H:%M:%f', @FinishedOn)

