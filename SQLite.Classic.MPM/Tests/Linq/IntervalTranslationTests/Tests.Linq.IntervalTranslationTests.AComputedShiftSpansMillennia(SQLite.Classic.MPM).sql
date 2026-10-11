-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '1600-01-01 00:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @early VarChar(23) -- AnsiString
SET     @early = '1650-01-01 00:00:00.000'
DECLARE @late VarChar(23) -- AnsiString
SET     @late = '8000-01-01 00:00:00.000'

SELECT
	strftime('%Y-%m-%d %H:%M:%f', @early, CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', @late, CAST(CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[EventRow] [r]
LIMIT 2

