-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(25) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00+02:00'
DECLARE @FinishedOn VarChar(28) -- AnsiString
SET     @FinishedOn = '2026-01-01 15:30:00.25+02:00'

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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN Substr([r].[FinishedOn], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[FinishedOn], 1, Length([r].[FinishedOn]) - 6), CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[FinishedOn], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[FinishedOn], CAST(CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END
FROM
	[ZonedEventRow] [r]
LIMIT 2

