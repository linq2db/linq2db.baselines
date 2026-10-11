-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Day VarChar(23) -- AnsiString
SET     @Day = '2026-03-01 00:00:00.000'
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-01-01 15:30:00.250'

INSERT INTO [DatedEventRow]
(
	[Id],
	[Day],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@Day,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[Day], CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[DatedEventRow] [r]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DatedEventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Day], CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') > strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

