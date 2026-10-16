-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '1600-01-01 00:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '4700-01-01 12:00:00.000'

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
DECLARE @early  -- DateTime
SET     @early = '1650-01-01 00:00:00.000'
DECLARE @late  -- DateTime
SET     @late = '8000-01-01 00:00:00.000'

SELECT
	strftime('%Y-%m-%d %H:%M:%f', @early, CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', @late, CAST(CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[EventRow] [r]
LIMIT 2

