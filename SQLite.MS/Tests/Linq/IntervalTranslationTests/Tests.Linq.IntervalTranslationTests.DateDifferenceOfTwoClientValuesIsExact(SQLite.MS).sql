-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-03 13:30:00.000'
DECLARE @FinishedOn  -- DateTime
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
DECLARE @Ticks  -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds  -- Double
SET     @TotalMilliseconds = 0.1234

SELECT
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
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
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[FinishedOn]) > strftime('%Y-%m-%d %H:%M:%f', @FinishedOn)

