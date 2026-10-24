-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '1980-01-01 00:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2060-01-01 12:00:00.000'

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

-- SQLite.Classic SQLite
DECLARE @early VarChar(23) -- AnsiString
SET     @early = '1971-01-01 00:00:00.000'
DECLARE @late VarChar(23) -- AnsiString
SET     @late = '2100-01-01 00:00:00.000'

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay(@early) + Round(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08),
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay(@late) + Round(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[EventRow] [r]
LIMIT 2

