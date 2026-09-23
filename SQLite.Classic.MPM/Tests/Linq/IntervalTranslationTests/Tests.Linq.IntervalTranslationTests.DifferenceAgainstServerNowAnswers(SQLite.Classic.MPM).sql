-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2025-06-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2025-06-01 10:00:00.000'

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
SELECT
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 1

